import 'package:get_it/get_it.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:yowl_app/core/api/business_api_client.dart';
import 'package:yowl_app/core/api/failure.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/model/query.dart';
import 'package:yowl_app/model/review.dart';

class YelpBusinessRepositoryImpl implements BusinessRepository {
  final _businessApi = GetIt.instance.get<BusinessApiClient>();

  @override
  Future<Result<List<Business>, Failure>> searchBusinesses(
      {required Query query}) async {
    try {
      final results = await _businessApi.searchBusinesses(query: query);
      if (results.isNotEmpty) {
        return Success(results);
      }
      return const Success([]);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }

  @override
  Future<Result<Business, Failure>> getBusiness(
      {required String businessId}) async {
    try {
      final business = await _businessApi.getBusiness(businessId: businessId);

      return Success(business);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }

  @override
  Future<Result<List<Review>, Failure>> getReviews(
      {required String businessId}) async {
    try {
      final reviews = await _businessApi.getReviews(businessId: businessId);

      return Success(reviews);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }
}
