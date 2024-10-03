import 'package:isar/isar.dart';
import './model.dart';
part 'user_data.g.dart';

@collection
class History {
  Id id = Isar.autoIncrement;
  @Index(name: 'package&url', composite: [CompositeIndex('url')])
  late String package;
  late String url;
  // 截图，保存封面地址
  String? cover;
  @Enumerated(EnumType.name)
  late ExtensionType type;
  // 不同线路
  late int episodeGroupId;
  // 不同线路下的集数
  late int episodeId;
  // 显示的标题
  late String title;
  // 进度标题
  late String episodeTitle;
  // 当前剧集/章节进度
  late String progress;
  // 当前章节/剧集总进度
  late String totalProgress;
  DateTime date = DateTime.now();
}

@collection
class MangaSetting {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  late String url;
  @Enumerated(EnumType.name)
  late MangaReadMode readMode;
}

@collection
class MiruDetail {
  Id id = Isar.autoIncrement;
  @Index(name: 'package&url', composite: [CompositeIndex('url')])
  late String package;
  late String url;
  late String data;
  int? tmdbID;
  DateTime updateTime = DateTime.now();
  String? aniListID;
}

@collection
class Favorite {
  Id id = Isar.autoIncrement;
  @Index(name: 'package&url', composite: [CompositeIndex('url')])
  late String package;
  late String url;
  @Enumerated(EnumType.name)
  late ExtensionType type;
  late String title;
  String? cover;
  DateTime date = DateTime.now();
}

@collection
class FavoriateGroup {
  Id id = Isar.autoIncrement;
  @Index(name: 'name', unique: true)
  late String name;
  late List<int> items;
  DateTime date = DateTime.now();
}
