// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_anime_model.g.dart';

@JsonSerializable()
class AnimeReleases extends Equatable {
  const AnimeReleases({
    this.id,
    this.name,
    this.poster,
    this.fresh_at,
    this.created_at,
    this.updated_at,
    this.is_ongoing,
    this.publish_day,
    this.description,
  });

  final int? id;
  final Name? name;
  final Poster? poster;
  final String? fresh_at;
  final String? created_at;
  final String? updated_at;
  final bool? is_ongoing;
  final PublishDay? publish_day;
  final String? description;

  factory AnimeReleases.fromJson(Map<String, dynamic> json) =>
      _$AnimeReleasesFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeReleasesToJson(this);

  @override
  List<Object?> get props => [
    id,
    name,
    poster,
    fresh_at,
    created_at,
    updated_at,
    is_ongoing,
    publish_day,
    description,
  ];
}

@JsonSerializable()
class Name extends Equatable {
  const Name({this.main = '', this.english = ''});

  final String? main;
  final String? english;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);

  @override
  List<Object?> get props => [main, english];
}

@JsonSerializable()
class Poster extends Equatable {
  const Poster({this.src = '', this.preview = '', this.thumbnail = ''});

  final String? src;
  final String? preview;
  final String? thumbnail;

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);

  Map<String, dynamic> toJson() => _$PosterToJson(this);

  String fullSrc(String baseUrl) => '$baseUrl$src';
  String fullPreview(String baseUrl) => '$baseUrl$preview';
  String fullThumbnail(String baseUrl) => '$baseUrl$thumbnail';

  @override
  List<Object?> get props => [src, preview, thumbnail];
}

@JsonSerializable()
class PublishDay extends Equatable {
  const PublishDay({this.value = 0, this.description = ''});

  final int? value;
  final String? description;

  factory PublishDay.fromJson(Map<String, dynamic> json) =>
      _$PublishDayFromJson(json);

  Map<String, dynamic> toJson() => _$PublishDayToJson(this);

  @override
  List<Object?> get props => [value, description];
}
