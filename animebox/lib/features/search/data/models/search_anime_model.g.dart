// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeReleases _$AnimeReleasesFromJson(Map<String, dynamic> json) =>
    AnimeReleases(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
      fresh_at: json['fresh_at'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      is_ongoing: json['is_ongoing'] as bool?,
      publish_day: json['publish_day'] == null
          ? null
          : PublishDay.fromJson(json['publish_day'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AnimeReleasesToJson(AnimeReleases instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster': instance.poster,
      'fresh_at': instance.fresh_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'is_ongoing': instance.is_ongoing,
      'publish_day': instance.publish_day,
      'description': instance.description,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
  main: json['main'] as String? ?? '',
  english: json['english'] as String? ?? '',
);

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
  'main': instance.main,
  'english': instance.english,
};

Poster _$PosterFromJson(Map<String, dynamic> json) => Poster(
  src: json['src'] as String? ?? '',
  preview: json['preview'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
);

Map<String, dynamic> _$PosterToJson(Poster instance) => <String, dynamic>{
  'src': instance.src,
  'preview': instance.preview,
  'thumbnail': instance.thumbnail,
};

PublishDay _$PublishDayFromJson(Map<String, dynamic> json) => PublishDay(
  value: (json['value'] as num?)?.toInt() ?? 0,
  description: json['description'] as String? ?? '',
);

Map<String, dynamic> _$PublishDayToJson(PublishDay instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };
