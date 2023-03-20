import 'package:yowl_app/model/models.dart';

abstract class BusinessGraphqlClient {
  Future<List<Business>> searchBusinesses({required Query query});
  Future<Business> getBusiness({required String businessId});
  Future<List<Review>> getReviews({required String businessId});
}
