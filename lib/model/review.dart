import 'package:freezed_annotation/freezed_annotation.dart';

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
    // TODO: User
  }) = _Review;
  
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
