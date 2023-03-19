import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Location({
    String? address1,
    String? address2,
    String? address3,
    String? city,
    String? zipCode,
    String? country,
    String? state,
    List<String>? displayAddress,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
