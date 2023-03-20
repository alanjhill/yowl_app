import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yowl_app/model/user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Review({
    String? id,
    String? url,
    String? text,
    DateTime? timeCreated,
    int? rating,
    User? user,
  }) = _Review;
  
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
