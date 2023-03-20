import 'package:freezed_annotation/freezed_annotation.dart';

part 'hours.freezed.dart';
part 'hours.g.dart';

@freezed
class Hours with _$Hours {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Hours({
    bool? isOpenNow,
    List<OpenHours>? open
  }) = _Hours;

  factory Hours.fromJson(Map<String, dynamic> json) => _$HoursFromJson(json);
}

@freezed
class OpenHours with _$OpenHours {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpenHours({
    int? day,
    String? start,
    String? end,
  }) = _OpenHours;

  factory OpenHours.fromJson(Map<String, dynamic> json) => _$OpenHoursFromJson(json);
}


