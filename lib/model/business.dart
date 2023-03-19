import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'coordinates.dart';
import 'location.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@freezed
class Business with _$Business {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Business({
    String? id,
    String? alias,
    String? name,
    String? imageUrl,
    bool? isClosed,
    String? url,
    int? reviewCount,
    List<Category>? categories,
    double? rating,
    Coordinates? coordinates,
    List<String>? transactions,
    Location? location,
    String? phone,
    String? displayPhone,
    double? distance,
    String? price,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
