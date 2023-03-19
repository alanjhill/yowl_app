// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      term: json['term'] as String?,
      radius: json['radius'] as int?,
      categories: json['categories'] as String?,
      locale: json['locale'] as String?,
      sortBy: json['sort_by'] as String?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'term': instance.term,
      'radius': instance.radius,
      'categories': instance.categories,
      'locale': instance.locale,
      'sort_by': instance.sortBy,
      'limit': instance.limit,
      'offset': instance.offset,
    };
