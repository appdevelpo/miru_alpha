// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHistoryCollection on Isar {
  IsarCollection<History> get historys => this.collection();
}

const HistorySchema = CollectionSchema(
  name: r'History',
  id: 1676981785059398080,
  properties: {
    r'cover': PropertySchema(
      id: 0,
      name: r'cover',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'episodeGroupId': PropertySchema(
      id: 2,
      name: r'episodeGroupId',
      type: IsarType.long,
    ),
    r'episodeId': PropertySchema(
      id: 3,
      name: r'episodeId',
      type: IsarType.long,
    ),
    r'episodeTitle': PropertySchema(
      id: 4,
      name: r'episodeTitle',
      type: IsarType.string,
    ),
    r'package': PropertySchema(
      id: 5,
      name: r'package',
      type: IsarType.string,
    ),
    r'progress': PropertySchema(
      id: 6,
      name: r'progress',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalProgress': PropertySchema(
      id: 8,
      name: r'totalProgress',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 9,
      name: r'type',
      type: IsarType.string,
      enumMap: _HistorytypeEnumValueMap,
    ),
    r'url': PropertySchema(
      id: 10,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _historyEstimateSize,
  serialize: _historySerialize,
  deserialize: _historyDeserialize,
  deserializeProp: _historyDeserializeProp,
  idName: r'id',
  indexes: {
    r'package&url': IndexSchema(
      id: 1543775085104464922,
      name: r'package&url',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'package',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'url',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _historyGetId,
  getLinks: _historyGetLinks,
  attach: _historyAttach,
  version: '3.1.0+1',
);

int _historyEstimateSize(
  History object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cover;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.episodeTitle.length * 3;
  bytesCount += 3 + object.package.length * 3;
  bytesCount += 3 + object.progress.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.totalProgress.length * 3;
  bytesCount += 3 + object.type.name.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _historySerialize(
  History object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cover);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeLong(offsets[2], object.episodeGroupId);
  writer.writeLong(offsets[3], object.episodeId);
  writer.writeString(offsets[4], object.episodeTitle);
  writer.writeString(offsets[5], object.package);
  writer.writeString(offsets[6], object.progress);
  writer.writeString(offsets[7], object.title);
  writer.writeString(offsets[8], object.totalProgress);
  writer.writeString(offsets[9], object.type.name);
  writer.writeString(offsets[10], object.url);
}

History _historyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = History();
  object.cover = reader.readStringOrNull(offsets[0]);
  object.date = reader.readDateTime(offsets[1]);
  object.episodeGroupId = reader.readLong(offsets[2]);
  object.episodeId = reader.readLong(offsets[3]);
  object.episodeTitle = reader.readString(offsets[4]);
  object.id = id;
  object.package = reader.readString(offsets[5]);
  object.progress = reader.readString(offsets[6]);
  object.title = reader.readString(offsets[7]);
  object.totalProgress = reader.readString(offsets[8]);
  object.type = _HistorytypeValueEnumMap[reader.readStringOrNull(offsets[9])] ??
      ExtensionType.manga;
  object.url = reader.readString(offsets[10]);
  return object;
}

P _historyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (_HistorytypeValueEnumMap[reader.readStringOrNull(offset)] ??
          ExtensionType.manga) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HistorytypeEnumValueMap = {
  r'manga': r'manga',
  r'bangumi': r'bangumi',
  r'fikushon': r'fikushon',
};
const _HistorytypeValueEnumMap = {
  r'manga': ExtensionType.manga,
  r'bangumi': ExtensionType.bangumi,
  r'fikushon': ExtensionType.fikushon,
};

Id _historyGetId(History object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _historyGetLinks(History object) {
  return [];
}

void _historyAttach(IsarCollection<dynamic> col, Id id, History object) {
  object.id = id;
}

extension HistoryQueryWhereSort on QueryBuilder<History, History, QWhere> {
  QueryBuilder<History, History, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HistoryQueryWhere on QueryBuilder<History, History, QWhereClause> {
  QueryBuilder<History, History, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> packageEqualToAnyUrl(
      String package) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package],
      ));
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> packageNotEqualToAnyUrl(
      String package) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> packageUrlEqualTo(
      String package, String url) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package, url],
      ));
    });
  }

  QueryBuilder<History, History, QAfterWhereClause> packageEqualToUrlNotEqualTo(
      String package, String url) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ));
      }
    });
  }
}

extension HistoryQueryFilter
    on QueryBuilder<History, History, QFilterCondition> {
  QueryBuilder<History, History, QAfterFilterCondition> coverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cover',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cover',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cover',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cover',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> coverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cover',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeGroupIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition>
      episodeGroupIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeGroupIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeGroupIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeId',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'episodeTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'episodeTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> episodeTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition>
      episodeTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'episodeTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'package',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'package',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> packageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'progress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'progress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progress',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> progressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'progress',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition>
      totalProgressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalProgress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'totalProgress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'totalProgress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> totalProgressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalProgress',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition>
      totalProgressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'totalProgress',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeEqualTo(
    ExtensionType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeGreaterThan(
    ExtensionType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeLessThan(
    ExtensionType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeBetween(
    ExtensionType lower,
    ExtensionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<History, History, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension HistoryQueryObject
    on QueryBuilder<History, History, QFilterCondition> {}

extension HistoryQueryLinks
    on QueryBuilder<History, History, QFilterCondition> {}

extension HistoryQuerySortBy on QueryBuilder<History, History, QSortBy> {
  QueryBuilder<History, History, QAfterSortBy> sortByCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeGroupId', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeGroupId', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeId', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeId', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTitle', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByEpisodeTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTitle', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByTotalProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProgress', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByTotalProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProgress', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension HistoryQuerySortThenBy
    on QueryBuilder<History, History, QSortThenBy> {
  QueryBuilder<History, History, QAfterSortBy> thenByCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeGroupId', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeGroupId', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeId', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeId', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTitle', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByEpisodeTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTitle', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByTotalProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProgress', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByTotalProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProgress', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<History, History, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension HistoryQueryWhereDistinct
    on QueryBuilder<History, History, QDistinct> {
  QueryBuilder<History, History, QDistinct> distinctByCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cover', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByEpisodeGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeGroupId');
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByEpisodeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeId');
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByEpisodeTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByPackage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'package', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByProgress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByTotalProgress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalProgress',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<History, History, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension HistoryQueryProperty
    on QueryBuilder<History, History, QQueryProperty> {
  QueryBuilder<History, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<History, String?, QQueryOperations> coverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cover');
    });
  }

  QueryBuilder<History, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<History, int, QQueryOperations> episodeGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeGroupId');
    });
  }

  QueryBuilder<History, int, QQueryOperations> episodeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeId');
    });
  }

  QueryBuilder<History, String, QQueryOperations> episodeTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeTitle');
    });
  }

  QueryBuilder<History, String, QQueryOperations> packageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'package');
    });
  }

  QueryBuilder<History, String, QQueryOperations> progressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progress');
    });
  }

  QueryBuilder<History, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<History, String, QQueryOperations> totalProgressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalProgress');
    });
  }

  QueryBuilder<History, ExtensionType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<History, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMangaSettingCollection on Isar {
  IsarCollection<MangaSetting> get mangaSettings => this.collection();
}

const MangaSettingSchema = CollectionSchema(
  name: r'MangaSetting',
  id: -6684337324789595454,
  properties: {
    r'readMode': PropertySchema(
      id: 0,
      name: r'readMode',
      type: IsarType.string,
      enumMap: _MangaSettingreadModeEnumValueMap,
    ),
    r'url': PropertySchema(
      id: 1,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _mangaSettingEstimateSize,
  serialize: _mangaSettingSerialize,
  deserialize: _mangaSettingDeserialize,
  deserializeProp: _mangaSettingDeserializeProp,
  idName: r'id',
  indexes: {
    r'url': IndexSchema(
      id: -5756857009679432345,
      name: r'url',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'url',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _mangaSettingGetId,
  getLinks: _mangaSettingGetLinks,
  attach: _mangaSettingAttach,
  version: '3.1.0+1',
);

int _mangaSettingEstimateSize(
  MangaSetting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.readMode.name.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _mangaSettingSerialize(
  MangaSetting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.readMode.name);
  writer.writeString(offsets[1], object.url);
}

MangaSetting _mangaSettingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MangaSetting();
  object.id = id;
  object.readMode =
      _MangaSettingreadModeValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          MangaReadMode.standard;
  object.url = reader.readString(offsets[1]);
  return object;
}

P _mangaSettingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_MangaSettingreadModeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          MangaReadMode.standard) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MangaSettingreadModeEnumValueMap = {
  r'standard': r'standard',
  r'rightToLeft': r'rightToLeft',
  r'webTonn': r'webTonn',
};
const _MangaSettingreadModeValueEnumMap = {
  r'standard': MangaReadMode.standard,
  r'rightToLeft': MangaReadMode.rightToLeft,
  r'webTonn': MangaReadMode.webTonn,
};

Id _mangaSettingGetId(MangaSetting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mangaSettingGetLinks(MangaSetting object) {
  return [];
}

void _mangaSettingAttach(
    IsarCollection<dynamic> col, Id id, MangaSetting object) {
  object.id = id;
}

extension MangaSettingByIndex on IsarCollection<MangaSetting> {
  Future<MangaSetting?> getByUrl(String url) {
    return getByIndex(r'url', [url]);
  }

  MangaSetting? getByUrlSync(String url) {
    return getByIndexSync(r'url', [url]);
  }

  Future<bool> deleteByUrl(String url) {
    return deleteByIndex(r'url', [url]);
  }

  bool deleteByUrlSync(String url) {
    return deleteByIndexSync(r'url', [url]);
  }

  Future<List<MangaSetting?>> getAllByUrl(List<String> urlValues) {
    final values = urlValues.map((e) => [e]).toList();
    return getAllByIndex(r'url', values);
  }

  List<MangaSetting?> getAllByUrlSync(List<String> urlValues) {
    final values = urlValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'url', values);
  }

  Future<int> deleteAllByUrl(List<String> urlValues) {
    final values = urlValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'url', values);
  }

  int deleteAllByUrlSync(List<String> urlValues) {
    final values = urlValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'url', values);
  }

  Future<Id> putByUrl(MangaSetting object) {
    return putByIndex(r'url', object);
  }

  Id putByUrlSync(MangaSetting object, {bool saveLinks = true}) {
    return putByIndexSync(r'url', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUrl(List<MangaSetting> objects) {
    return putAllByIndex(r'url', objects);
  }

  List<Id> putAllByUrlSync(List<MangaSetting> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'url', objects, saveLinks: saveLinks);
  }
}

extension MangaSettingQueryWhereSort
    on QueryBuilder<MangaSetting, MangaSetting, QWhere> {
  QueryBuilder<MangaSetting, MangaSetting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MangaSettingQueryWhere
    on QueryBuilder<MangaSetting, MangaSetting, QWhereClause> {
  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> urlEqualTo(
      String url) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'url',
        value: [url],
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterWhereClause> urlNotEqualTo(
      String url) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'url',
              lower: [],
              upper: [url],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'url',
              lower: [url],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'url',
              lower: [url],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'url',
              lower: [],
              upper: [url],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MangaSettingQueryFilter
    on QueryBuilder<MangaSetting, MangaSetting, QFilterCondition> {
  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeEqualTo(
    MangaReadMode value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeGreaterThan(
    MangaReadMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeLessThan(
    MangaReadMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeBetween(
    MangaReadMode lower,
    MangaReadMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readMode',
        value: '',
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      readModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readMode',
        value: '',
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension MangaSettingQueryObject
    on QueryBuilder<MangaSetting, MangaSetting, QFilterCondition> {}

extension MangaSettingQueryLinks
    on QueryBuilder<MangaSetting, MangaSetting, QFilterCondition> {}

extension MangaSettingQuerySortBy
    on QueryBuilder<MangaSetting, MangaSetting, QSortBy> {
  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> sortByReadMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readMode', Sort.asc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> sortByReadModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readMode', Sort.desc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MangaSettingQuerySortThenBy
    on QueryBuilder<MangaSetting, MangaSetting, QSortThenBy> {
  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenByReadMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readMode', Sort.asc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenByReadModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readMode', Sort.desc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MangaSettingQueryWhereDistinct
    on QueryBuilder<MangaSetting, MangaSetting, QDistinct> {
  QueryBuilder<MangaSetting, MangaSetting, QDistinct> distinctByReadMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MangaSetting, MangaSetting, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension MangaSettingQueryProperty
    on QueryBuilder<MangaSetting, MangaSetting, QQueryProperty> {
  QueryBuilder<MangaSetting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MangaSetting, MangaReadMode, QQueryOperations>
      readModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readMode');
    });
  }

  QueryBuilder<MangaSetting, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMiruDetailCollection on Isar {
  IsarCollection<MiruDetail> get miruDetails => this.collection();
}

const MiruDetailSchema = CollectionSchema(
  name: r'MiruDetail',
  id: 939590956167425685,
  properties: {
    r'aniListID': PropertySchema(
      id: 0,
      name: r'aniListID',
      type: IsarType.string,
    ),
    r'data': PropertySchema(
      id: 1,
      name: r'data',
      type: IsarType.string,
    ),
    r'package': PropertySchema(
      id: 2,
      name: r'package',
      type: IsarType.string,
    ),
    r'tmdbID': PropertySchema(
      id: 3,
      name: r'tmdbID',
      type: IsarType.long,
    ),
    r'updateTime': PropertySchema(
      id: 4,
      name: r'updateTime',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 5,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _miruDetailEstimateSize,
  serialize: _miruDetailSerialize,
  deserialize: _miruDetailDeserialize,
  deserializeProp: _miruDetailDeserializeProp,
  idName: r'id',
  indexes: {
    r'package&url': IndexSchema(
      id: 1543775085104464922,
      name: r'package&url',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'package',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'url',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _miruDetailGetId,
  getLinks: _miruDetailGetLinks,
  attach: _miruDetailAttach,
  version: '3.1.0+1',
);

int _miruDetailEstimateSize(
  MiruDetail object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aniListID;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.data.length * 3;
  bytesCount += 3 + object.package.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _miruDetailSerialize(
  MiruDetail object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aniListID);
  writer.writeString(offsets[1], object.data);
  writer.writeString(offsets[2], object.package);
  writer.writeLong(offsets[3], object.tmdbID);
  writer.writeDateTime(offsets[4], object.updateTime);
  writer.writeString(offsets[5], object.url);
}

MiruDetail _miruDetailDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MiruDetail();
  object.aniListID = reader.readStringOrNull(offsets[0]);
  object.data = reader.readString(offsets[1]);
  object.id = id;
  object.package = reader.readString(offsets[2]);
  object.tmdbID = reader.readLongOrNull(offsets[3]);
  object.updateTime = reader.readDateTime(offsets[4]);
  object.url = reader.readString(offsets[5]);
  return object;
}

P _miruDetailDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _miruDetailGetId(MiruDetail object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _miruDetailGetLinks(MiruDetail object) {
  return [];
}

void _miruDetailAttach(IsarCollection<dynamic> col, Id id, MiruDetail object) {
  object.id = id;
}

extension MiruDetailQueryWhereSort
    on QueryBuilder<MiruDetail, MiruDetail, QWhere> {
  QueryBuilder<MiruDetail, MiruDetail, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MiruDetailQueryWhere
    on QueryBuilder<MiruDetail, MiruDetail, QWhereClause> {
  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> packageEqualToAnyUrl(
      String package) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package],
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause>
      packageNotEqualToAnyUrl(String package) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause> packageUrlEqualTo(
      String package, String url) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package, url],
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterWhereClause>
      packageEqualToUrlNotEqualTo(String package, String url) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MiruDetailQueryFilter
    on QueryBuilder<MiruDetail, MiruDetail, QFilterCondition> {
  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aniListID',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aniListID',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aniListID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aniListID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> aniListIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aniListID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aniListID',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      aniListIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aniListID',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      packageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'package',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'package',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> packageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      packageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> tmdbIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tmdbID',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      tmdbIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tmdbID',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> tmdbIDEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tmdbID',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> tmdbIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tmdbID',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> tmdbIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tmdbID',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> tmdbIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tmdbID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> updateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> updateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension MiruDetailQueryObject
    on QueryBuilder<MiruDetail, MiruDetail, QFilterCondition> {}

extension MiruDetailQueryLinks
    on QueryBuilder<MiruDetail, MiruDetail, QFilterCondition> {}

extension MiruDetailQuerySortBy
    on QueryBuilder<MiruDetail, MiruDetail, QSortBy> {
  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByAniListID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aniListID', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByAniListIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aniListID', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByTmdbID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tmdbID', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByTmdbIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tmdbID', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MiruDetailQuerySortThenBy
    on QueryBuilder<MiruDetail, MiruDetail, QSortThenBy> {
  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByAniListID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aniListID', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByAniListIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aniListID', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByTmdbID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tmdbID', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByTmdbIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tmdbID', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MiruDetailQueryWhereDistinct
    on QueryBuilder<MiruDetail, MiruDetail, QDistinct> {
  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByAniListID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aniListID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByPackage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'package', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByTmdbID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tmdbID');
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }

  QueryBuilder<MiruDetail, MiruDetail, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension MiruDetailQueryProperty
    on QueryBuilder<MiruDetail, MiruDetail, QQueryProperty> {
  QueryBuilder<MiruDetail, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MiruDetail, String?, QQueryOperations> aniListIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aniListID');
    });
  }

  QueryBuilder<MiruDetail, String, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<MiruDetail, String, QQueryOperations> packageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'package');
    });
  }

  QueryBuilder<MiruDetail, int?, QQueryOperations> tmdbIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tmdbID');
    });
  }

  QueryBuilder<MiruDetail, DateTime, QQueryOperations> updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<MiruDetail, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoriteCollection on Isar {
  IsarCollection<Favorite> get favorites => this.collection();
}

const FavoriteSchema = CollectionSchema(
  name: r'Favorite',
  id: 5577971995748139032,
  properties: {
    r'cover': PropertySchema(
      id: 0,
      name: r'cover',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'package': PropertySchema(
      id: 2,
      name: r'package',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 3,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 4,
      name: r'type',
      type: IsarType.string,
      enumMap: _FavoritetypeEnumValueMap,
    ),
    r'url': PropertySchema(
      id: 5,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _favoriteEstimateSize,
  serialize: _favoriteSerialize,
  deserialize: _favoriteDeserialize,
  deserializeProp: _favoriteDeserializeProp,
  idName: r'id',
  indexes: {
    r'package&url': IndexSchema(
      id: 1543775085104464922,
      name: r'package&url',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'package',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'url',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _favoriteGetId,
  getLinks: _favoriteGetLinks,
  attach: _favoriteAttach,
  version: '3.1.0+1',
);

int _favoriteEstimateSize(
  Favorite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cover;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.package.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.type.name.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _favoriteSerialize(
  Favorite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cover);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeString(offsets[2], object.package);
  writer.writeString(offsets[3], object.title);
  writer.writeString(offsets[4], object.type.name);
  writer.writeString(offsets[5], object.url);
}

Favorite _favoriteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Favorite();
  object.cover = reader.readStringOrNull(offsets[0]);
  object.date = reader.readDateTime(offsets[1]);
  object.id = id;
  object.package = reader.readString(offsets[2]);
  object.title = reader.readString(offsets[3]);
  object.type =
      _FavoritetypeValueEnumMap[reader.readStringOrNull(offsets[4])] ??
          ExtensionType.manga;
  object.url = reader.readString(offsets[5]);
  return object;
}

P _favoriteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (_FavoritetypeValueEnumMap[reader.readStringOrNull(offset)] ??
          ExtensionType.manga) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FavoritetypeEnumValueMap = {
  r'manga': r'manga',
  r'bangumi': r'bangumi',
  r'fikushon': r'fikushon',
};
const _FavoritetypeValueEnumMap = {
  r'manga': ExtensionType.manga,
  r'bangumi': ExtensionType.bangumi,
  r'fikushon': ExtensionType.fikushon,
};

Id _favoriteGetId(Favorite object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _favoriteGetLinks(Favorite object) {
  return [];
}

void _favoriteAttach(IsarCollection<dynamic> col, Id id, Favorite object) {
  object.id = id;
}

extension FavoriteQueryWhereSort on QueryBuilder<Favorite, Favorite, QWhere> {
  QueryBuilder<Favorite, Favorite, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoriteQueryWhere on QueryBuilder<Favorite, Favorite, QWhereClause> {
  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> packageEqualToAnyUrl(
      String package) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package],
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> packageNotEqualToAnyUrl(
      String package) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [],
              upper: [package],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> packageUrlEqualTo(
      String package, String url) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'package&url',
        value: [package, url],
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause>
      packageEqualToUrlNotEqualTo(String package, String url) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package, url],
              includeLower: false,
              upper: [package],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'package&url',
              lower: [package],
              upper: [package, url],
              includeUpper: false,
            ));
      }
    });
  }
}

extension FavoriteQueryFilter
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {
  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cover',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cover',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cover',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cover',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> coverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cover',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'package',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'package',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'package',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> packageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'package',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeEqualTo(
    ExtensionType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeGreaterThan(
    ExtensionType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeLessThan(
    ExtensionType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeBetween(
    ExtensionType lower,
    ExtensionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension FavoriteQueryObject
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {}

extension FavoriteQueryLinks
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {}

extension FavoriteQuerySortBy on QueryBuilder<Favorite, Favorite, QSortBy> {
  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension FavoriteQuerySortThenBy
    on QueryBuilder<Favorite, Favorite, QSortThenBy> {
  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cover', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByPackage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByPackageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'package', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension FavoriteQueryWhereDistinct
    on QueryBuilder<Favorite, Favorite, QDistinct> {
  QueryBuilder<Favorite, Favorite, QDistinct> distinctByCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cover', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Favorite, Favorite, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Favorite, Favorite, QDistinct> distinctByPackage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'package', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Favorite, Favorite, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Favorite, Favorite, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Favorite, Favorite, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension FavoriteQueryProperty
    on QueryBuilder<Favorite, Favorite, QQueryProperty> {
  QueryBuilder<Favorite, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Favorite, String?, QQueryOperations> coverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cover');
    });
  }

  QueryBuilder<Favorite, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Favorite, String, QQueryOperations> packageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'package');
    });
  }

  QueryBuilder<Favorite, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Favorite, ExtensionType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Favorite, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoriateGroupCollection on Isar {
  IsarCollection<FavoriateGroup> get favoriateGroups => this.collection();
}

const FavoriateGroupSchema = CollectionSchema(
  name: r'FavoriateGroup',
  id: 3337298335784774822,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'items': PropertySchema(
      id: 1,
      name: r'items',
      type: IsarType.longList,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _favoriateGroupEstimateSize,
  serialize: _favoriateGroupSerialize,
  deserialize: _favoriateGroupDeserialize,
  deserializeProp: _favoriateGroupDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _favoriateGroupGetId,
  getLinks: _favoriateGroupGetLinks,
  attach: _favoriateGroupAttach,
  version: '3.1.0+1',
);

int _favoriateGroupEstimateSize(
  FavoriateGroup object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.items.length * 8;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _favoriateGroupSerialize(
  FavoriateGroup object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLongList(offsets[1], object.items);
  writer.writeString(offsets[2], object.name);
}

FavoriateGroup _favoriateGroupDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FavoriateGroup();
  object.date = reader.readDateTime(offsets[0]);
  object.id = id;
  object.items = reader.readLongList(offsets[1]) ?? [];
  object.name = reader.readString(offsets[2]);
  return object;
}

P _favoriateGroupDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _favoriateGroupGetId(FavoriateGroup object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _favoriateGroupGetLinks(FavoriateGroup object) {
  return [];
}

void _favoriateGroupAttach(
    IsarCollection<dynamic> col, Id id, FavoriateGroup object) {
  object.id = id;
}

extension FavoriateGroupByIndex on IsarCollection<FavoriateGroup> {
  Future<FavoriateGroup?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  FavoriateGroup? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<FavoriateGroup?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<FavoriateGroup?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(FavoriateGroup object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(FavoriateGroup object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<FavoriateGroup> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<FavoriateGroup> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension FavoriateGroupQueryWhereSort
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QWhere> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoriateGroupQueryWhere
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QWhereClause> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause> nameEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension FavoriateGroupQueryFilter
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QFilterCondition> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'items',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'items',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'items',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'items',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      itemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension FavoriateGroupQueryObject
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QFilterCondition> {}

extension FavoriateGroupQueryLinks
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QFilterCondition> {}

extension FavoriateGroupQuerySortBy
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QSortBy> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension FavoriateGroupQuerySortThenBy
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QSortThenBy> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension FavoriateGroupQueryWhereDistinct
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QDistinct> {
  QueryBuilder<FavoriateGroup, FavoriateGroup, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QDistinct> distinctByItems() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'items');
    });
  }

  QueryBuilder<FavoriateGroup, FavoriateGroup, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension FavoriateGroupQueryProperty
    on QueryBuilder<FavoriateGroup, FavoriateGroup, QQueryProperty> {
  QueryBuilder<FavoriateGroup, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FavoriateGroup, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<FavoriateGroup, List<int>, QQueryOperations> itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
    });
  }

  QueryBuilder<FavoriateGroup, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
