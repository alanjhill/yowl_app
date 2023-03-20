import 'package:multiple_result/multiple_result.dart';
import 'package:yowl_app/core/exception/failure.dart';
import 'package:yowl_app/model/models.dart';

abstract class BusinessRepository {
  Future<Result<List<Business>, Failure>> searchBusinesses(
      {required Query query});

  Future<Result<Business, Failure>> getBusiness({required String businessId});

  Future<Result<List<Review>, Failure>> getReviews(
      {required String businessId});
}
