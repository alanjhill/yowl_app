import 'package:multiple_result/multiple_result.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/exception/failure.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/model/query.dart';
import 'package:yowl_app/model/review.dart';

class YelpBusinessRepositoryGraphqlImpl implements BusinessRepository {
  final BusinessGraphqlClient _graphApiClient;

  YelpBusinessRepositoryGraphqlImpl(this._graphApiClient);

  @override
  Future<Result<List<Business>, Failure>> searchBusinesses(
      {required Query query}) async {
    try {
      final results = await _graphApiClient.searchBusinesses(query: query);
      if (results.isNotEmpty) {
        return Success(results);
      }
      return const Success([]);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }

  /// Unused
  @override
  Future<Result<Business, Failure>> getBusiness(
      {required String businessId}) async {
    try {
      final business =
          await _graphApiClient.getBusiness(businessId: businessId);

      return Success(business);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }

  /// Unused
  @override
  Future<Result<List<Review>, Failure>> getReviews(
      {required String businessId}) async {
    try {
      final reviews = await _graphApiClient.getReviews(businessId: businessId);

      return Success(reviews);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }
}
