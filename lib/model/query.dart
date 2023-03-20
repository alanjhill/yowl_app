import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory Query.withDefaults() {
    return const Query(
      latitude: 49.322930667573914,
      longitude: -123.07367809122593,
      categories: 'restaurants',
      limit: 10,
      locale: 'en_CA',
      offset: 0,
      sortBy: 'distance',
    );
  }

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}
