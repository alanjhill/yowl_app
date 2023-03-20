// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hours _$$_HoursFromJson(Map<String, dynamic> json) => _$_Hours(
      isOpenNow: json['is_open_now'] as bool?,
      open: (json['open'] as List<dynamic>?)
          ?.map((e) => OpenHours.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HoursToJson(_$_Hours instance) => <String, dynamic>{
      'is_open_now': instance.isOpenNow,
      'open': instance.open,
    };

_$_OpenHours _$$_OpenHoursFromJson(Map<String, dynamic> json) => _$_OpenHours(
      day: json['day'] as int?,
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$$_OpenHoursToJson(_$_OpenHours instance) =>
    <String, dynamic>{
      'day': instance.day,
      'start': instance.start,
      'end': instance.end,
    };
