import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Test({
    required String id,
    required String textField,
    required bool yesOrNoField,
  }) = _Test;

  factory Test.fromJson(Map<String, Object?> json) => _$TestFromJson(json);
}