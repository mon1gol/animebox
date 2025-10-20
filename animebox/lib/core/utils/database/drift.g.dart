// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift.dart';

// ignore_for_file: type=lint
class $AnimeReleasesTableTable extends AnimeReleasesTable
    with TableInfo<$AnimeReleasesTableTable, AnimeReleasesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeReleasesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _freshAtMeta = const VerificationMeta(
    'freshAt',
  );
  @override
  late final GeneratedColumn<String> freshAt = GeneratedColumn<String>(
    'fresh_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isOngoingMeta = const VerificationMeta(
    'isOngoing',
  );
  @override
  late final GeneratedColumn<bool> isOngoing = GeneratedColumn<bool>(
    'is_ongoing',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_ongoing" IN (0, 1))',
    ),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameJsonMeta = const VerificationMeta(
    'nameJson',
  );
  @override
  late final GeneratedColumn<String> nameJson = GeneratedColumn<String>(
    'name_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _posterJsonMeta = const VerificationMeta(
    'posterJson',
  );
  @override
  late final GeneratedColumn<String> posterJson = GeneratedColumn<String>(
    'poster_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _publishDayJsonMeta = const VerificationMeta(
    'publishDayJson',
  );
  @override
  late final GeneratedColumn<String> publishDayJson = GeneratedColumn<String>(
    'publish_day_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    freshAt,
    createdAt,
    updatedAt,
    isOngoing,
    description,
    nameJson,
    posterJson,
    publishDayJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'anime_releases_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AnimeReleasesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('fresh_at')) {
      context.handle(
        _freshAtMeta,
        freshAt.isAcceptableOrUnknown(data['fresh_at']!, _freshAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('is_ongoing')) {
      context.handle(
        _isOngoingMeta,
        isOngoing.isAcceptableOrUnknown(data['is_ongoing']!, _isOngoingMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('name_json')) {
      context.handle(
        _nameJsonMeta,
        nameJson.isAcceptableOrUnknown(data['name_json']!, _nameJsonMeta),
      );
    }
    if (data.containsKey('poster_json')) {
      context.handle(
        _posterJsonMeta,
        posterJson.isAcceptableOrUnknown(data['poster_json']!, _posterJsonMeta),
      );
    }
    if (data.containsKey('publish_day_json')) {
      context.handle(
        _publishDayJsonMeta,
        publishDayJson.isAcceptableOrUnknown(
          data['publish_day_json']!,
          _publishDayJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeReleasesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeReleasesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      freshAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fresh_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      ),
      isOngoing: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_ongoing'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      nameJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_json'],
      ),
      posterJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_json'],
      ),
      publishDayJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}publish_day_json'],
      ),
    );
  }

  @override
  $AnimeReleasesTableTable createAlias(String alias) {
    return $AnimeReleasesTableTable(attachedDatabase, alias);
  }
}

class AnimeReleasesTableData extends DataClass
    implements Insertable<AnimeReleasesTableData> {
  final int id;
  final String? freshAt;
  final String? createdAt;
  final String? updatedAt;
  final bool? isOngoing;
  final String? description;
  final String? nameJson;
  final String? posterJson;
  final String? publishDayJson;
  const AnimeReleasesTableData({
    required this.id,
    this.freshAt,
    this.createdAt,
    this.updatedAt,
    this.isOngoing,
    this.description,
    this.nameJson,
    this.posterJson,
    this.publishDayJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || freshAt != null) {
      map['fresh_at'] = Variable<String>(freshAt);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<String>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<String>(updatedAt);
    }
    if (!nullToAbsent || isOngoing != null) {
      map['is_ongoing'] = Variable<bool>(isOngoing);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || nameJson != null) {
      map['name_json'] = Variable<String>(nameJson);
    }
    if (!nullToAbsent || posterJson != null) {
      map['poster_json'] = Variable<String>(posterJson);
    }
    if (!nullToAbsent || publishDayJson != null) {
      map['publish_day_json'] = Variable<String>(publishDayJson);
    }
    return map;
  }

  AnimeReleasesTableCompanion toCompanion(bool nullToAbsent) {
    return AnimeReleasesTableCompanion(
      id: Value(id),
      freshAt: freshAt == null && nullToAbsent
          ? const Value.absent()
          : Value(freshAt),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      isOngoing: isOngoing == null && nullToAbsent
          ? const Value.absent()
          : Value(isOngoing),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      nameJson: nameJson == null && nullToAbsent
          ? const Value.absent()
          : Value(nameJson),
      posterJson: posterJson == null && nullToAbsent
          ? const Value.absent()
          : Value(posterJson),
      publishDayJson: publishDayJson == null && nullToAbsent
          ? const Value.absent()
          : Value(publishDayJson),
    );
  }

  factory AnimeReleasesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeReleasesTableData(
      id: serializer.fromJson<int>(json['id']),
      freshAt: serializer.fromJson<String?>(json['freshAt']),
      createdAt: serializer.fromJson<String?>(json['createdAt']),
      updatedAt: serializer.fromJson<String?>(json['updatedAt']),
      isOngoing: serializer.fromJson<bool?>(json['isOngoing']),
      description: serializer.fromJson<String?>(json['description']),
      nameJson: serializer.fromJson<String?>(json['nameJson']),
      posterJson: serializer.fromJson<String?>(json['posterJson']),
      publishDayJson: serializer.fromJson<String?>(json['publishDayJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'freshAt': serializer.toJson<String?>(freshAt),
      'createdAt': serializer.toJson<String?>(createdAt),
      'updatedAt': serializer.toJson<String?>(updatedAt),
      'isOngoing': serializer.toJson<bool?>(isOngoing),
      'description': serializer.toJson<String?>(description),
      'nameJson': serializer.toJson<String?>(nameJson),
      'posterJson': serializer.toJson<String?>(posterJson),
      'publishDayJson': serializer.toJson<String?>(publishDayJson),
    };
  }

  AnimeReleasesTableData copyWith({
    int? id,
    Value<String?> freshAt = const Value.absent(),
    Value<String?> createdAt = const Value.absent(),
    Value<String?> updatedAt = const Value.absent(),
    Value<bool?> isOngoing = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> nameJson = const Value.absent(),
    Value<String?> posterJson = const Value.absent(),
    Value<String?> publishDayJson = const Value.absent(),
  }) => AnimeReleasesTableData(
    id: id ?? this.id,
    freshAt: freshAt.present ? freshAt.value : this.freshAt,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    isOngoing: isOngoing.present ? isOngoing.value : this.isOngoing,
    description: description.present ? description.value : this.description,
    nameJson: nameJson.present ? nameJson.value : this.nameJson,
    posterJson: posterJson.present ? posterJson.value : this.posterJson,
    publishDayJson: publishDayJson.present
        ? publishDayJson.value
        : this.publishDayJson,
  );
  AnimeReleasesTableData copyWithCompanion(AnimeReleasesTableCompanion data) {
    return AnimeReleasesTableData(
      id: data.id.present ? data.id.value : this.id,
      freshAt: data.freshAt.present ? data.freshAt.value : this.freshAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isOngoing: data.isOngoing.present ? data.isOngoing.value : this.isOngoing,
      description: data.description.present
          ? data.description.value
          : this.description,
      nameJson: data.nameJson.present ? data.nameJson.value : this.nameJson,
      posterJson: data.posterJson.present
          ? data.posterJson.value
          : this.posterJson,
      publishDayJson: data.publishDayJson.present
          ? data.publishDayJson.value
          : this.publishDayJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimeReleasesTableData(')
          ..write('id: $id, ')
          ..write('freshAt: $freshAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isOngoing: $isOngoing, ')
          ..write('description: $description, ')
          ..write('nameJson: $nameJson, ')
          ..write('posterJson: $posterJson, ')
          ..write('publishDayJson: $publishDayJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    freshAt,
    createdAt,
    updatedAt,
    isOngoing,
    description,
    nameJson,
    posterJson,
    publishDayJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeReleasesTableData &&
          other.id == this.id &&
          other.freshAt == this.freshAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isOngoing == this.isOngoing &&
          other.description == this.description &&
          other.nameJson == this.nameJson &&
          other.posterJson == this.posterJson &&
          other.publishDayJson == this.publishDayJson);
}

class AnimeReleasesTableCompanion
    extends UpdateCompanion<AnimeReleasesTableData> {
  final Value<int> id;
  final Value<String?> freshAt;
  final Value<String?> createdAt;
  final Value<String?> updatedAt;
  final Value<bool?> isOngoing;
  final Value<String?> description;
  final Value<String?> nameJson;
  final Value<String?> posterJson;
  final Value<String?> publishDayJson;
  const AnimeReleasesTableCompanion({
    this.id = const Value.absent(),
    this.freshAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isOngoing = const Value.absent(),
    this.description = const Value.absent(),
    this.nameJson = const Value.absent(),
    this.posterJson = const Value.absent(),
    this.publishDayJson = const Value.absent(),
  });
  AnimeReleasesTableCompanion.insert({
    this.id = const Value.absent(),
    this.freshAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isOngoing = const Value.absent(),
    this.description = const Value.absent(),
    this.nameJson = const Value.absent(),
    this.posterJson = const Value.absent(),
    this.publishDayJson = const Value.absent(),
  });
  static Insertable<AnimeReleasesTableData> custom({
    Expression<int>? id,
    Expression<String>? freshAt,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<bool>? isOngoing,
    Expression<String>? description,
    Expression<String>? nameJson,
    Expression<String>? posterJson,
    Expression<String>? publishDayJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (freshAt != null) 'fresh_at': freshAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isOngoing != null) 'is_ongoing': isOngoing,
      if (description != null) 'description': description,
      if (nameJson != null) 'name_json': nameJson,
      if (posterJson != null) 'poster_json': posterJson,
      if (publishDayJson != null) 'publish_day_json': publishDayJson,
    });
  }

  AnimeReleasesTableCompanion copyWith({
    Value<int>? id,
    Value<String?>? freshAt,
    Value<String?>? createdAt,
    Value<String?>? updatedAt,
    Value<bool?>? isOngoing,
    Value<String?>? description,
    Value<String?>? nameJson,
    Value<String?>? posterJson,
    Value<String?>? publishDayJson,
  }) {
    return AnimeReleasesTableCompanion(
      id: id ?? this.id,
      freshAt: freshAt ?? this.freshAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isOngoing: isOngoing ?? this.isOngoing,
      description: description ?? this.description,
      nameJson: nameJson ?? this.nameJson,
      posterJson: posterJson ?? this.posterJson,
      publishDayJson: publishDayJson ?? this.publishDayJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (freshAt.present) {
      map['fresh_at'] = Variable<String>(freshAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (isOngoing.present) {
      map['is_ongoing'] = Variable<bool>(isOngoing.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (nameJson.present) {
      map['name_json'] = Variable<String>(nameJson.value);
    }
    if (posterJson.present) {
      map['poster_json'] = Variable<String>(posterJson.value);
    }
    if (publishDayJson.present) {
      map['publish_day_json'] = Variable<String>(publishDayJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeReleasesTableCompanion(')
          ..write('id: $id, ')
          ..write('freshAt: $freshAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isOngoing: $isOngoing, ')
          ..write('description: $description, ')
          ..write('nameJson: $nameJson, ')
          ..write('posterJson: $posterJson, ')
          ..write('publishDayJson: $publishDayJson')
          ..write(')'))
        .toString();
  }
}

class $AnimeReleasesSearchTableTable extends AnimeReleasesSearchTable
    with
        TableInfo<
          $AnimeReleasesSearchTableTable,
          AnimeReleasesSearchTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeReleasesSearchTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _freshAtMeta = const VerificationMeta(
    'freshAt',
  );
  @override
  late final GeneratedColumn<String> freshAt = GeneratedColumn<String>(
    'fresh_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isOngoingMeta = const VerificationMeta(
    'isOngoing',
  );
  @override
  late final GeneratedColumn<bool> isOngoing = GeneratedColumn<bool>(
    'is_ongoing',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_ongoing" IN (0, 1))',
    ),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameJsonMeta = const VerificationMeta(
    'nameJson',
  );
  @override
  late final GeneratedColumn<String> nameJson = GeneratedColumn<String>(
    'name_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _posterJsonMeta = const VerificationMeta(
    'posterJson',
  );
  @override
  late final GeneratedColumn<String> posterJson = GeneratedColumn<String>(
    'poster_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _publishDayJsonMeta = const VerificationMeta(
    'publishDayJson',
  );
  @override
  late final GeneratedColumn<String> publishDayJson = GeneratedColumn<String>(
    'publish_day_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    freshAt,
    createdAt,
    updatedAt,
    isOngoing,
    description,
    nameJson,
    posterJson,
    publishDayJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'anime_releases_search_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AnimeReleasesSearchTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('fresh_at')) {
      context.handle(
        _freshAtMeta,
        freshAt.isAcceptableOrUnknown(data['fresh_at']!, _freshAtMeta),
      );
    } else if (isInserting) {
      context.missing(_freshAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_ongoing')) {
      context.handle(
        _isOngoingMeta,
        isOngoing.isAcceptableOrUnknown(data['is_ongoing']!, _isOngoingMeta),
      );
    } else if (isInserting) {
      context.missing(_isOngoingMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('name_json')) {
      context.handle(
        _nameJsonMeta,
        nameJson.isAcceptableOrUnknown(data['name_json']!, _nameJsonMeta),
      );
    }
    if (data.containsKey('poster_json')) {
      context.handle(
        _posterJsonMeta,
        posterJson.isAcceptableOrUnknown(data['poster_json']!, _posterJsonMeta),
      );
    }
    if (data.containsKey('publish_day_json')) {
      context.handle(
        _publishDayJsonMeta,
        publishDayJson.isAcceptableOrUnknown(
          data['publish_day_json']!,
          _publishDayJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimeReleasesSearchTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeReleasesSearchTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      freshAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fresh_at'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      isOngoing: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_ongoing'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      nameJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_json'],
      ),
      posterJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_json'],
      ),
      publishDayJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}publish_day_json'],
      ),
    );
  }

  @override
  $AnimeReleasesSearchTableTable createAlias(String alias) {
    return $AnimeReleasesSearchTableTable(attachedDatabase, alias);
  }
}

class AnimeReleasesSearchTableData extends DataClass
    implements Insertable<AnimeReleasesSearchTableData> {
  final int id;
  final String freshAt;
  final String createdAt;
  final String updatedAt;
  final bool isOngoing;
  final String? description;
  final String? nameJson;
  final String? posterJson;
  final String? publishDayJson;
  const AnimeReleasesSearchTableData({
    required this.id,
    required this.freshAt,
    required this.createdAt,
    required this.updatedAt,
    required this.isOngoing,
    this.description,
    this.nameJson,
    this.posterJson,
    this.publishDayJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['fresh_at'] = Variable<String>(freshAt);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    map['is_ongoing'] = Variable<bool>(isOngoing);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || nameJson != null) {
      map['name_json'] = Variable<String>(nameJson);
    }
    if (!nullToAbsent || posterJson != null) {
      map['poster_json'] = Variable<String>(posterJson);
    }
    if (!nullToAbsent || publishDayJson != null) {
      map['publish_day_json'] = Variable<String>(publishDayJson);
    }
    return map;
  }

  AnimeReleasesSearchTableCompanion toCompanion(bool nullToAbsent) {
    return AnimeReleasesSearchTableCompanion(
      id: Value(id),
      freshAt: Value(freshAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isOngoing: Value(isOngoing),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      nameJson: nameJson == null && nullToAbsent
          ? const Value.absent()
          : Value(nameJson),
      posterJson: posterJson == null && nullToAbsent
          ? const Value.absent()
          : Value(posterJson),
      publishDayJson: publishDayJson == null && nullToAbsent
          ? const Value.absent()
          : Value(publishDayJson),
    );
  }

  factory AnimeReleasesSearchTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeReleasesSearchTableData(
      id: serializer.fromJson<int>(json['id']),
      freshAt: serializer.fromJson<String>(json['freshAt']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      isOngoing: serializer.fromJson<bool>(json['isOngoing']),
      description: serializer.fromJson<String?>(json['description']),
      nameJson: serializer.fromJson<String?>(json['nameJson']),
      posterJson: serializer.fromJson<String?>(json['posterJson']),
      publishDayJson: serializer.fromJson<String?>(json['publishDayJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'freshAt': serializer.toJson<String>(freshAt),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'isOngoing': serializer.toJson<bool>(isOngoing),
      'description': serializer.toJson<String?>(description),
      'nameJson': serializer.toJson<String?>(nameJson),
      'posterJson': serializer.toJson<String?>(posterJson),
      'publishDayJson': serializer.toJson<String?>(publishDayJson),
    };
  }

  AnimeReleasesSearchTableData copyWith({
    int? id,
    String? freshAt,
    String? createdAt,
    String? updatedAt,
    bool? isOngoing,
    Value<String?> description = const Value.absent(),
    Value<String?> nameJson = const Value.absent(),
    Value<String?> posterJson = const Value.absent(),
    Value<String?> publishDayJson = const Value.absent(),
  }) => AnimeReleasesSearchTableData(
    id: id ?? this.id,
    freshAt: freshAt ?? this.freshAt,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isOngoing: isOngoing ?? this.isOngoing,
    description: description.present ? description.value : this.description,
    nameJson: nameJson.present ? nameJson.value : this.nameJson,
    posterJson: posterJson.present ? posterJson.value : this.posterJson,
    publishDayJson: publishDayJson.present
        ? publishDayJson.value
        : this.publishDayJson,
  );
  AnimeReleasesSearchTableData copyWithCompanion(
    AnimeReleasesSearchTableCompanion data,
  ) {
    return AnimeReleasesSearchTableData(
      id: data.id.present ? data.id.value : this.id,
      freshAt: data.freshAt.present ? data.freshAt.value : this.freshAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isOngoing: data.isOngoing.present ? data.isOngoing.value : this.isOngoing,
      description: data.description.present
          ? data.description.value
          : this.description,
      nameJson: data.nameJson.present ? data.nameJson.value : this.nameJson,
      posterJson: data.posterJson.present
          ? data.posterJson.value
          : this.posterJson,
      publishDayJson: data.publishDayJson.present
          ? data.publishDayJson.value
          : this.publishDayJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimeReleasesSearchTableData(')
          ..write('id: $id, ')
          ..write('freshAt: $freshAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isOngoing: $isOngoing, ')
          ..write('description: $description, ')
          ..write('nameJson: $nameJson, ')
          ..write('posterJson: $posterJson, ')
          ..write('publishDayJson: $publishDayJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    freshAt,
    createdAt,
    updatedAt,
    isOngoing,
    description,
    nameJson,
    posterJson,
    publishDayJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeReleasesSearchTableData &&
          other.id == this.id &&
          other.freshAt == this.freshAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isOngoing == this.isOngoing &&
          other.description == this.description &&
          other.nameJson == this.nameJson &&
          other.posterJson == this.posterJson &&
          other.publishDayJson == this.publishDayJson);
}

class AnimeReleasesSearchTableCompanion
    extends UpdateCompanion<AnimeReleasesSearchTableData> {
  final Value<int> id;
  final Value<String> freshAt;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<bool> isOngoing;
  final Value<String?> description;
  final Value<String?> nameJson;
  final Value<String?> posterJson;
  final Value<String?> publishDayJson;
  const AnimeReleasesSearchTableCompanion({
    this.id = const Value.absent(),
    this.freshAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isOngoing = const Value.absent(),
    this.description = const Value.absent(),
    this.nameJson = const Value.absent(),
    this.posterJson = const Value.absent(),
    this.publishDayJson = const Value.absent(),
  });
  AnimeReleasesSearchTableCompanion.insert({
    this.id = const Value.absent(),
    required String freshAt,
    required String createdAt,
    required String updatedAt,
    required bool isOngoing,
    this.description = const Value.absent(),
    this.nameJson = const Value.absent(),
    this.posterJson = const Value.absent(),
    this.publishDayJson = const Value.absent(),
  }) : freshAt = Value(freshAt),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       isOngoing = Value(isOngoing);
  static Insertable<AnimeReleasesSearchTableData> custom({
    Expression<int>? id,
    Expression<String>? freshAt,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<bool>? isOngoing,
    Expression<String>? description,
    Expression<String>? nameJson,
    Expression<String>? posterJson,
    Expression<String>? publishDayJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (freshAt != null) 'fresh_at': freshAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isOngoing != null) 'is_ongoing': isOngoing,
      if (description != null) 'description': description,
      if (nameJson != null) 'name_json': nameJson,
      if (posterJson != null) 'poster_json': posterJson,
      if (publishDayJson != null) 'publish_day_json': publishDayJson,
    });
  }

  AnimeReleasesSearchTableCompanion copyWith({
    Value<int>? id,
    Value<String>? freshAt,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<bool>? isOngoing,
    Value<String?>? description,
    Value<String?>? nameJson,
    Value<String?>? posterJson,
    Value<String?>? publishDayJson,
  }) {
    return AnimeReleasesSearchTableCompanion(
      id: id ?? this.id,
      freshAt: freshAt ?? this.freshAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isOngoing: isOngoing ?? this.isOngoing,
      description: description ?? this.description,
      nameJson: nameJson ?? this.nameJson,
      posterJson: posterJson ?? this.posterJson,
      publishDayJson: publishDayJson ?? this.publishDayJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (freshAt.present) {
      map['fresh_at'] = Variable<String>(freshAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (isOngoing.present) {
      map['is_ongoing'] = Variable<bool>(isOngoing.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (nameJson.present) {
      map['name_json'] = Variable<String>(nameJson.value);
    }
    if (posterJson.present) {
      map['poster_json'] = Variable<String>(posterJson.value);
    }
    if (publishDayJson.present) {
      map['publish_day_json'] = Variable<String>(publishDayJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeReleasesSearchTableCompanion(')
          ..write('id: $id, ')
          ..write('freshAt: $freshAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isOngoing: $isOngoing, ')
          ..write('description: $description, ')
          ..write('nameJson: $nameJson, ')
          ..write('posterJson: $posterJson, ')
          ..write('publishDayJson: $publishDayJson')
          ..write(')'))
        .toString();
  }
}

abstract class _$AniDatabase extends GeneratedDatabase {
  _$AniDatabase(QueryExecutor e) : super(e);
  $AniDatabaseManager get managers => $AniDatabaseManager(this);
  late final $AnimeReleasesTableTable animeReleasesTable =
      $AnimeReleasesTableTable(this);
  late final $AnimeReleasesSearchTableTable animeReleasesSearchTable =
      $AnimeReleasesSearchTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    animeReleasesTable,
    animeReleasesSearchTable,
  ];
}

typedef $$AnimeReleasesTableTableCreateCompanionBuilder =
    AnimeReleasesTableCompanion Function({
      Value<int> id,
      Value<String?> freshAt,
      Value<String?> createdAt,
      Value<String?> updatedAt,
      Value<bool?> isOngoing,
      Value<String?> description,
      Value<String?> nameJson,
      Value<String?> posterJson,
      Value<String?> publishDayJson,
    });
typedef $$AnimeReleasesTableTableUpdateCompanionBuilder =
    AnimeReleasesTableCompanion Function({
      Value<int> id,
      Value<String?> freshAt,
      Value<String?> createdAt,
      Value<String?> updatedAt,
      Value<bool?> isOngoing,
      Value<String?> description,
      Value<String?> nameJson,
      Value<String?> posterJson,
      Value<String?> publishDayJson,
    });

class $$AnimeReleasesTableTableFilterComposer
    extends Composer<_$AniDatabase, $AnimeReleasesTableTable> {
  $$AnimeReleasesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get freshAt => $composableBuilder(
    column: $table.freshAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isOngoing => $composableBuilder(
    column: $table.isOngoing,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJson => $composableBuilder(
    column: $table.nameJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AnimeReleasesTableTableOrderingComposer
    extends Composer<_$AniDatabase, $AnimeReleasesTableTable> {
  $$AnimeReleasesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get freshAt => $composableBuilder(
    column: $table.freshAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isOngoing => $composableBuilder(
    column: $table.isOngoing,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJson => $composableBuilder(
    column: $table.nameJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AnimeReleasesTableTableAnnotationComposer
    extends Composer<_$AniDatabase, $AnimeReleasesTableTable> {
  $$AnimeReleasesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get freshAt =>
      $composableBuilder(column: $table.freshAt, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isOngoing =>
      $composableBuilder(column: $table.isOngoing, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nameJson =>
      $composableBuilder(column: $table.nameJson, builder: (column) => column);

  GeneratedColumn<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => column,
  );
}

class $$AnimeReleasesTableTableTableManager
    extends
        RootTableManager<
          _$AniDatabase,
          $AnimeReleasesTableTable,
          AnimeReleasesTableData,
          $$AnimeReleasesTableTableFilterComposer,
          $$AnimeReleasesTableTableOrderingComposer,
          $$AnimeReleasesTableTableAnnotationComposer,
          $$AnimeReleasesTableTableCreateCompanionBuilder,
          $$AnimeReleasesTableTableUpdateCompanionBuilder,
          (
            AnimeReleasesTableData,
            BaseReferences<
              _$AniDatabase,
              $AnimeReleasesTableTable,
              AnimeReleasesTableData
            >,
          ),
          AnimeReleasesTableData,
          PrefetchHooks Function()
        > {
  $$AnimeReleasesTableTableTableManager(
    _$AniDatabase db,
    $AnimeReleasesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnimeReleasesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnimeReleasesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnimeReleasesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> freshAt = const Value.absent(),
                Value<String?> createdAt = const Value.absent(),
                Value<String?> updatedAt = const Value.absent(),
                Value<bool?> isOngoing = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> nameJson = const Value.absent(),
                Value<String?> posterJson = const Value.absent(),
                Value<String?> publishDayJson = const Value.absent(),
              }) => AnimeReleasesTableCompanion(
                id: id,
                freshAt: freshAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isOngoing: isOngoing,
                description: description,
                nameJson: nameJson,
                posterJson: posterJson,
                publishDayJson: publishDayJson,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> freshAt = const Value.absent(),
                Value<String?> createdAt = const Value.absent(),
                Value<String?> updatedAt = const Value.absent(),
                Value<bool?> isOngoing = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> nameJson = const Value.absent(),
                Value<String?> posterJson = const Value.absent(),
                Value<String?> publishDayJson = const Value.absent(),
              }) => AnimeReleasesTableCompanion.insert(
                id: id,
                freshAt: freshAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isOngoing: isOngoing,
                description: description,
                nameJson: nameJson,
                posterJson: posterJson,
                publishDayJson: publishDayJson,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AnimeReleasesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AniDatabase,
      $AnimeReleasesTableTable,
      AnimeReleasesTableData,
      $$AnimeReleasesTableTableFilterComposer,
      $$AnimeReleasesTableTableOrderingComposer,
      $$AnimeReleasesTableTableAnnotationComposer,
      $$AnimeReleasesTableTableCreateCompanionBuilder,
      $$AnimeReleasesTableTableUpdateCompanionBuilder,
      (
        AnimeReleasesTableData,
        BaseReferences<
          _$AniDatabase,
          $AnimeReleasesTableTable,
          AnimeReleasesTableData
        >,
      ),
      AnimeReleasesTableData,
      PrefetchHooks Function()
    >;
typedef $$AnimeReleasesSearchTableTableCreateCompanionBuilder =
    AnimeReleasesSearchTableCompanion Function({
      Value<int> id,
      required String freshAt,
      required String createdAt,
      required String updatedAt,
      required bool isOngoing,
      Value<String?> description,
      Value<String?> nameJson,
      Value<String?> posterJson,
      Value<String?> publishDayJson,
    });
typedef $$AnimeReleasesSearchTableTableUpdateCompanionBuilder =
    AnimeReleasesSearchTableCompanion Function({
      Value<int> id,
      Value<String> freshAt,
      Value<String> createdAt,
      Value<String> updatedAt,
      Value<bool> isOngoing,
      Value<String?> description,
      Value<String?> nameJson,
      Value<String?> posterJson,
      Value<String?> publishDayJson,
    });

class $$AnimeReleasesSearchTableTableFilterComposer
    extends Composer<_$AniDatabase, $AnimeReleasesSearchTableTable> {
  $$AnimeReleasesSearchTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get freshAt => $composableBuilder(
    column: $table.freshAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isOngoing => $composableBuilder(
    column: $table.isOngoing,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJson => $composableBuilder(
    column: $table.nameJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AnimeReleasesSearchTableTableOrderingComposer
    extends Composer<_$AniDatabase, $AnimeReleasesSearchTableTable> {
  $$AnimeReleasesSearchTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get freshAt => $composableBuilder(
    column: $table.freshAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isOngoing => $composableBuilder(
    column: $table.isOngoing,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJson => $composableBuilder(
    column: $table.nameJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AnimeReleasesSearchTableTableAnnotationComposer
    extends Composer<_$AniDatabase, $AnimeReleasesSearchTableTable> {
  $$AnimeReleasesSearchTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get freshAt =>
      $composableBuilder(column: $table.freshAt, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isOngoing =>
      $composableBuilder(column: $table.isOngoing, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nameJson =>
      $composableBuilder(column: $table.nameJson, builder: (column) => column);

  GeneratedColumn<String> get posterJson => $composableBuilder(
    column: $table.posterJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get publishDayJson => $composableBuilder(
    column: $table.publishDayJson,
    builder: (column) => column,
  );
}

class $$AnimeReleasesSearchTableTableTableManager
    extends
        RootTableManager<
          _$AniDatabase,
          $AnimeReleasesSearchTableTable,
          AnimeReleasesSearchTableData,
          $$AnimeReleasesSearchTableTableFilterComposer,
          $$AnimeReleasesSearchTableTableOrderingComposer,
          $$AnimeReleasesSearchTableTableAnnotationComposer,
          $$AnimeReleasesSearchTableTableCreateCompanionBuilder,
          $$AnimeReleasesSearchTableTableUpdateCompanionBuilder,
          (
            AnimeReleasesSearchTableData,
            BaseReferences<
              _$AniDatabase,
              $AnimeReleasesSearchTableTable,
              AnimeReleasesSearchTableData
            >,
          ),
          AnimeReleasesSearchTableData,
          PrefetchHooks Function()
        > {
  $$AnimeReleasesSearchTableTableTableManager(
    _$AniDatabase db,
    $AnimeReleasesSearchTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnimeReleasesSearchTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$AnimeReleasesSearchTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$AnimeReleasesSearchTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> freshAt = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<bool> isOngoing = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> nameJson = const Value.absent(),
                Value<String?> posterJson = const Value.absent(),
                Value<String?> publishDayJson = const Value.absent(),
              }) => AnimeReleasesSearchTableCompanion(
                id: id,
                freshAt: freshAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isOngoing: isOngoing,
                description: description,
                nameJson: nameJson,
                posterJson: posterJson,
                publishDayJson: publishDayJson,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String freshAt,
                required String createdAt,
                required String updatedAt,
                required bool isOngoing,
                Value<String?> description = const Value.absent(),
                Value<String?> nameJson = const Value.absent(),
                Value<String?> posterJson = const Value.absent(),
                Value<String?> publishDayJson = const Value.absent(),
              }) => AnimeReleasesSearchTableCompanion.insert(
                id: id,
                freshAt: freshAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isOngoing: isOngoing,
                description: description,
                nameJson: nameJson,
                posterJson: posterJson,
                publishDayJson: publishDayJson,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AnimeReleasesSearchTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AniDatabase,
      $AnimeReleasesSearchTableTable,
      AnimeReleasesSearchTableData,
      $$AnimeReleasesSearchTableTableFilterComposer,
      $$AnimeReleasesSearchTableTableOrderingComposer,
      $$AnimeReleasesSearchTableTableAnnotationComposer,
      $$AnimeReleasesSearchTableTableCreateCompanionBuilder,
      $$AnimeReleasesSearchTableTableUpdateCompanionBuilder,
      (
        AnimeReleasesSearchTableData,
        BaseReferences<
          _$AniDatabase,
          $AnimeReleasesSearchTableTable,
          AnimeReleasesSearchTableData
        >,
      ),
      AnimeReleasesSearchTableData,
      PrefetchHooks Function()
    >;

class $AniDatabaseManager {
  final _$AniDatabase _db;
  $AniDatabaseManager(this._db);
  $$AnimeReleasesTableTableTableManager get animeReleasesTable =>
      $$AnimeReleasesTableTableTableManager(_db, _db.animeReleasesTable);
  $$AnimeReleasesSearchTableTableTableManager get animeReleasesSearchTable =>
      $$AnimeReleasesSearchTableTableTableManager(
        _db,
        _db.animeReleasesSearchTable,
      );
}
