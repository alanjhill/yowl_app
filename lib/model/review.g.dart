// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['id'] as String?,
      url: json['url'] as String?,
      text: json['text'] as String?,
      timeCreated: json['time_created'] == null
          ? null
          : DateTime.parse(json['time_created'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'text': instance.text,
      'time_created': instance.timeCreated?.toIso8601String(),
      'user': instance.user,
    };
