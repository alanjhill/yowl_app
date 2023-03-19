import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'query.freezed.dart';

part 'query.g.dart';

@freezed
class Query with _$Query {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Query({
    final double? latitude,
    final double? longitude,
    final String? term,
    final int? radius,
    // TODO: Just one categor(ies) for now...look to fix for multiple
    final String? categories,
    final String? locale,
    final String? sortBy,
    final int? limit,
    final int? offset,
  }) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}
