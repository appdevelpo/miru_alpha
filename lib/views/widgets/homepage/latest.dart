import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miru_app_new/model/index.dart';
import 'package:miru_app_new/provider/network_provider.dart';
import 'package:miru_app_new/utils/extension/extension_service.dart';
import 'package:miru_app_new/utils/router/router_util.dart';
import 'package:miru_app_new/utils/watch/watch_entry.dart';
import 'package:miru_app_new/views/widgets/index.dart';
import 'package:miru_app_new/views/widgets/miru_grid_tile_loading_box.dart';
import 'package:moon_design/moon_design.dart';

class Latest extends ConsumerStatefulWidget {
  const Latest(
      {super.key,
      required this.extensionService,
      required this.needrefresh,
      required this.searchValue});
  final ExtensionApiV1 extensionService;
  // a trigger to refresh the latest
  final ValueNotifier<bool> needrefresh;
  final ValueNotifier<String> searchValue;
  @override
  createState() => _LatestState();
}

class _LatestState extends ConsumerState<Latest> {
  late final ValueNotifier<bool> leftIsHover;
  late final ValueNotifier<bool> rightIsHover;
  bool isRefreshing = false;
  final _colorgradient = [
    Colors.black.withAlpha(80),
    Colors.transparent,
  ];
  final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    leftIsHover = ValueNotifier(false);
    rightIsHover = ValueNotifier(false);
    widget.needrefresh.addListener(() {
      if (widget.searchValue.value.isEmpty) {
        if (isRefreshing) {
          return;
        }
        isRefreshing = true;
        ref.invalidate(
            fetchExtensionLatestProvider(widget.extensionService, 1));
        ref
            .read(fetchExtensionLatestProvider(widget.extensionService, 1))
            .whenData((_) => isRefreshing = false);
        return;
      }
      ref.invalidate(fetchExtensionSearchProvider(
          widget.extensionService, widget.searchValue.value, 1));
      ref
          .read(fetchExtensionSearchProvider(
              widget.extensionService, widget.searchValue.value, 1))
          .whenData((_) => isRefreshing = false);
    });
  }

  void onTap() {
    context.push('/search/single',
        extra: SearchPageParam(service: widget.extensionService, query: null));
  }

  AsyncValue<List<ExtensionListItem>> snapShot = const AsyncValue.loading();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (widget.searchValue.value.isEmpty) {
      snapShot =
          ref.watch(fetchExtensionLatestProvider(widget.extensionService, 1));
    } else {
      snapShot = ref.watch(fetchExtensionSearchProvider(
          widget.extensionService, widget.searchValue.value, 1));
    }
    if (width > 800) {
      //desktop
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          MoonButton(
            onTap: onTap,
            padding: const EdgeInsets.only(left: 10),
            trailing: const Icon(MoonIcons.controls_chevron_right_24_regular),
            label: Text(widget.extensionService.extension.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          MoonButton(
            padding: const EdgeInsets.only(right: 20),
            label: Text(
              'More',
              style: TextStyle(color: Colors.grey[600]),
            ),
            onTap: onTap,
          )
        ]),
        const SizedBox(
          height: 10,
        ),
        snapShot.when(
            data: (data) => GestureDetector(
                onTapDown: (_) {},
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 270,
                          child: Stack(children: [
                            ListView.builder(
                              controller: _scrollController,
                              itemBuilder: (context, index) => MiruGridTile(
                                title: data[index].title,
                                subtitle: data[index].update ?? "",
                                imageUrl: data[index].cover,
                                onTap: () {
                                  context.push('/search/detail',
                                      extra: DetailParam(
                                          service: widget.extensionService,
                                          url: data[index].url));
                                },
                                width: 160,
                              ),
                              itemCount: data.length,
                              scrollDirection: Axis.horizontal,
                            ),
                            GestureDetector(
                                onTapDown: (_) {
                                  _scrollController.animateTo(
                                      _scrollController.offset - 100,
                                      duration: Durations.short1,
                                      curve: Curves.ease);
                                },
                                child: MouseRegion(
                                    onHover: (event) {
                                      leftIsHover.value = true;
                                    },
                                    onExit: (event) {
                                      leftIsHover.value = false;
                                    },
                                    cursor: SystemMouseCursors.click,
                                    child: ValueListenableBuilder(
                                        valueListenable: rightIsHover,
                                        builder: (context, lvalue, child) =>
                                            AnimatedContainer(
                                              width: width / 20,
                                              height: double.infinity,
                                              decoration: lvalue
                                                  ? BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      gradient: LinearGradient(
                                                        colors: _colorgradient,
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .centerRight,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.2),
                                                          blurRadius: 10,
                                                          spreadRadius: 2,
                                                        ),
                                                      ],
                                                    )
                                                  : null,
                                              duration: Durations.short1,
                                              child: const Icon(
                                                  color: Colors.white,
                                                  MoonIcons
                                                      .arrows_left_32_regular),
                                            )))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTapDown: (_) {
                                      _scrollController.animateTo(
                                          _scrollController.offset + 100,
                                          duration: Durations.short1,
                                          curve: Curves.ease);
                                    },
                                    child: MouseRegion(
                                        onHover: (event) {
                                          rightIsHover.value = true;
                                        },
                                        onExit: (event) {
                                          rightIsHover.value = false;
                                        },
                                        cursor: SystemMouseCursors.click,
                                        child: ValueListenableBuilder(
                                            valueListenable: rightIsHover,
                                            builder: (context, rvalue, child) =>
                                                AnimatedContainer(
                                                  width: width / 20,
                                                  height: double.infinity,
                                                  decoration: rvalue
                                                      ? BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          gradient:
                                                              LinearGradient(
                                                            colors:
                                                                _colorgradient,
                                                            end: Alignment
                                                                .centerLeft,
                                                            begin: Alignment
                                                                .centerRight,
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.2),
                                                              blurRadius: 10,
                                                              spreadRadius: 2,
                                                            ),
                                                          ],
                                                        )
                                                      : null,
                                                  duration: Durations.short1,
                                                  child: const Icon(
                                                      color: Colors.white,
                                                      MoonIcons
                                                          .arrows_right_32_regular),
                                                )))))
                          ])),
                      const SizedBox(
                        height: 20,
                      )
                    ])),
            error: (error, stack) => Text(snapShot.error.toString()),
            loading: () => SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const MiruGridTileLoadingBox(
                        width: 160, height: 200);
                  },
                )))
      ]);
    }
    //mobile
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MoonButton(
          onTap: onTap,
          padding: const EdgeInsets.only(left: 10),
          trailing: const Icon(MoonIcons.controls_chevron_right_24_regular),
          label: Text(widget.extensionService.extension.name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        MoonButton(
          padding: const EdgeInsets.only(right: 20),
          label: Text(
            'More',
            style: TextStyle(color: Colors.grey[600]),
          ),
          onTap: onTap,
        )
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            height: 200,
            width: double.infinity,
            child: snapShot.when(
              data: (data) {
                if (data.isEmpty) {
                  return const Center(
                    child: Text(
                      "No Results Found  :( ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "HarmonyOS_Sans"),
                    ),
                  );
                }
                return ListView.builder(
                  controller: _scrollController,
                  itemBuilder: (context, index) => MiruGridTile(
                    title: data[index].title,
                    subtitle: data[index].update ?? "",
                    imageUrl: data[index].cover,
                    onTap: () {
                      context.push('/search/detail',
                          extra: DetailParam(
                              service: widget.extensionService,
                              url: data[index].url));
                    },
                    width: 100,
                    // height: 200,
                  ),
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                );
              },
              error: (error, stackTrace) => Text(snapShot.error.toString()),
              loading: () => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const MiruGridTileLoadingBox(width: 100);
                },
              ),
            )),
        const SizedBox(
          height: 20,
        )
      ])
    ]);
  }
}
