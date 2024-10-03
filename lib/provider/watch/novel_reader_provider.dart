import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miru_app_new/model/index.dart';
import 'package:miru_app_new/utils/database_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NovelProvider {
  static final AutoDisposeStateNotifierProvider<NovelReaderProvider,
          MangaReaderState> _mangaReaderProvider =
      StateNotifierProvider.autoDispose<NovelReaderProvider, MangaReaderState>(
          (ref) {
    return NovelReaderProvider([]);
  });

  static late AutoDisposeStateNotifierProvider<NovelEpisodeNotifier,
      NovelEpisodeNotifierState> _episodeNotifier;

  static AutoDisposeStateNotifierProvider<NovelReaderProvider, MangaReaderState>
      get provider => _mangaReaderProvider;
  static AutoDisposeStateNotifierProvider<NovelEpisodeNotifier,
      NovelEpisodeNotifierState> get epProvider => _episodeNotifier;
  static initEpisode(List<ExtensionEpisodeGroup> epGroup, String name,
      int selectedGroupIndex, int selectedEpisodeIndex) {
    _episodeNotifier = StateNotifierProvider.autoDispose<NovelEpisodeNotifier,
        NovelEpisodeNotifierState>((ref) {
      return NovelEpisodeNotifier(
          epGroup, name, selectedGroupIndex, selectedEpisodeIndex);
    });
  }
}

class MangaReaderState {
  final List<String> content;
  // final ItemScrollController? itemScrollController;
  // final ItemPositionsListener? itemPositionsListener;
  // final ScrollOffsetController? scrollOffsetController;
  // final ScrollOffsetListener? scrollOffsetListener;
  final double offset;
  final int itemPosition;
  final int totalPage;
  const MangaReaderState(
      {this.content = const [],
      // this.itemPositionsListener,
      // this.itemScrollController,
      // this.scrollOffsetController,
      // this.scrollOffsetListener,
      this.offset = 0,
      this.totalPage = 0,
      this.itemPosition = 0});

  MangaReaderState copyWith({
    List<String>? content,
    ItemScrollController? itemScrollController,
    ItemPositionsListener? itemPositionsListener,
    ScrollOffsetController? scrollOffsetController,
    ScrollOffsetListener? scrollOffsetListener,
    double? offset,
    int? itemPosition,
    int? totalPage,
  }) {
    return MangaReaderState(
        content: content ?? this.content,
        totalPage: totalPage ?? this.totalPage,
        offset: offset ?? this.offset,
        itemPosition: itemPosition ?? this.itemPosition);
  }
}

class NovelReaderProvider extends StateNotifier<MangaReaderState> {
  NovelReaderProvider(List<String> content) : super(const MangaReaderState()) {
    _init(content);
  }
  final itemPositionsListener = ItemPositionsListener.create();
  final scrollOffsetController = ScrollOffsetController();
  final scrollOffsetListener = ScrollOffsetListener.create();
  final itemScrollController = ItemScrollController();
  void _init(List<String> content) {
    state = state.copyWith(
      content: content,
      totalPage: content.length - 1,
    );
  }

  void putContent(List<String> content) {
    state = state.copyWith(content: content, totalPage: content.length - 1);
  }

  void initListener() {
    itemPositionsListener.itemPositions.addListener(_whenItemPositionChange);
    scrollOffsetListener.changes.listen(_whenScrollOffsetChange);
  }

  void _whenItemPositionChange() {
    final index = itemPositionsListener.itemPositions.value.first.index;

    state = state.copyWith(
      itemPosition: index,
    );
  }

  void _whenScrollOffsetChange(double val) {
    state = state.copyWith(offset: val);
  }

  void setContent(List<String> content) {
    state = state.copyWith(content: content, totalPage: content.length - 1);
  }
}

class NovelEpisodeNotifierState {
  final List<ExtensionEpisodeGroup> epGroup;
  final int selectedGroupIndex;
  final int selectedEpisodeIndex;
  final String name;
  NovelEpisodeNotifierState(
      {this.epGroup = const [],
      this.selectedGroupIndex = 0,
      this.name = '',
      this.selectedEpisodeIndex = 0});
  NovelEpisodeNotifierState copyWith(
      {List<ExtensionEpisodeGroup>? epGroup,
      String? name,
      bool? flag,
      int? selectedGroupIndex,
      int? selectedEpisodeIndex}) {
    return NovelEpisodeNotifierState(
        epGroup: epGroup ?? this.epGroup,
        name: name ?? this.name,
        selectedGroupIndex: selectedGroupIndex ?? this.selectedGroupIndex,
        selectedEpisodeIndex:
            selectedEpisodeIndex ?? this.selectedEpisodeIndex);
  }
}

class NovelEpisodeNotifier extends StateNotifier<NovelEpisodeNotifierState> {
  NovelEpisodeNotifier(List<ExtensionEpisodeGroup> epGroup, String name,
      int selectedGroupIndex, int selectedEpisodeIndex)
      : super(NovelEpisodeNotifierState(
            epGroup: epGroup,
            name: name,
            selectedEpisodeIndex: selectedEpisodeIndex,
            selectedGroupIndex: selectedGroupIndex)) {
    state.copyWith(
        epGroup: epGroup,
        name: name,
        selectedGroupIndex: selectedGroupIndex,
        selectedEpisodeIndex: selectedEpisodeIndex);
  }
  final scrollController = ScrollController();
  void setSelectedGroupIndex(int index) {
    state = state.copyWith(selectedGroupIndex: index);
  }

  void setSelectedEpisodeIndex(int index) {
    state = state.copyWith(selectedEpisodeIndex: index);
  }

  void nextChapter() {
    if (state.selectedEpisodeIndex <
        state.epGroup[state.selectedGroupIndex].urls.length) {
      state =
          state.copyWith(selectedEpisodeIndex: state.selectedEpisodeIndex + 1);
    }
  }

  void prevChapter() {
    if (state.selectedEpisodeIndex > 0) {
      state =
          state.copyWith(selectedEpisodeIndex: state.selectedEpisodeIndex - 1);
    }
  }

  late String imageUrl;
  late String package;
  late ExtensionType type;
  late String detailUrl;
  void putinformation(
      ExtensionType type, String package, String imageUrl, String detailUrl) {
    this.package = package;
    this.type = type;
    this.imageUrl = imageUrl;
    this.detailUrl = detailUrl;
  }

  @override
  void dispose() {
    DatabaseService.putHistory(History()
      ..title = state.name
      ..package = package
      ..type = type
      ..episodeGroupId = state.selectedGroupIndex
      ..episodeId = state.selectedEpisodeIndex
      ..progress = state.selectedEpisodeIndex.toString()
      ..cover = imageUrl
      ..totalProgress =
          state.epGroup[state.selectedGroupIndex].urls.length.toString()
      ..episodeTitle = state.epGroup[state.selectedGroupIndex]
          .urls[state.selectedEpisodeIndex].name
      ..url = detailUrl
      ..date = DateTime.now());
    super.dispose();
  }
}
