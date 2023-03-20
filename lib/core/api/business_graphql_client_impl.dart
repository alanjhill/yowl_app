import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:yowl_app/core/extension/query_result_extensions.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/exception/failure.dart';
import 'package:yowl_app/core/api/graphql_service.dart';
import 'package:yowl_app/core/api/queries.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/model/query.dart';
import 'package:yowl_app/model/review.dart';

class YelpBusinessGraphqlClientImpl extends GraphQLService
    implements BusinessGraphqlClient {
  @override
  Future<List<Business>> searchBusinesses({required Query query}) async {
    try {
      final QueryOptions options = QueryOptions(
        document: gql(Queries.searchBusinesses),
        variables: <String, dynamic>{
          'latitude': query.latitude,
          'longitude': query.longitude,
          'term': query.term,
          'limit': query.limit,
          'radius': query.radius,
          'sort_by': query.sortBy,
        },
      );
      final QueryResult queryResult = await client.query(options);
      final results = queryResult.data?['search']?['business'];
      if (results != null) {
        final businesses =
            (results as List).map((r) => Business.fromJson(r)).toList();
        return businesses;
      } else if (queryResult.exception is OperationException) {
        if (kDebugMode) {
          print('!!! ${queryResult.exception}');
        }
        throw Failure(
            message: 'Something went wrong: ${queryResult.exception}');
      }
    } on OperationException catch (e, s) {
      if (kDebugMode) {
        print('!!! $e');
        print('!!! $s');
      }
      if (e.graphqlErrors.isNotEmpty) {
        throw Failure(message: 'Something went wrong: ${e.graphqlErrors}');
      } else if (e.linkException != null) {
        throw Failure(
          message: 'Internet Connection Error',
        );
      }
    }
    return [];
  }

  /// Get Individual Business (not used)
  @override
  Future<Business> getBusiness({required String businessId}) async {
    final QueryOptions options = QueryOptions(
      document: gql(Queries.searchBusinesses),
      variables: <String, dynamic>{
        'id': businessId,
      },
    );
    final QueryResult result = await client.query(options);
    return result.retrieveResult<Business>(tag: 'business')!;
  }

  /// Get Reviews (not used)
  @override
  Future<List<Review>> getReviews({required String businessId}) async {
    try {
      final QueryOptions options = QueryOptions(
        document: gql(Queries.getReviews),
        variables: <String, dynamic>{
          'business': businessId,
        },
      );
      final QueryResult queryResult = await client.query(options);
      final results = queryResult.data?['reviews']?['review'];
      if (results != null) {
        final reviews =
            (results as List).map((r) => Review.fromJson(r)).toList();
        return reviews;
      } else if (queryResult.exception is OperationException) {
        if (kDebugMode) {
          print('!!! ${queryResult.exception}');
        }
        throw Failure(
            message: 'Something went wrong: ${queryResult.exception}');
      }
    } on OperationException catch (e, s) {
      if (kDebugMode) {
        print('!!! $e');
        print('!!! $s');
      }
      if (e.graphqlErrors.isNotEmpty) {
        throw Failure(message: 'Something went wrong: ${e.graphqlErrors}');
      } else if (e.linkException != null) {
        throw Failure(
          message: 'Internet Connection Error',
        );
      }
    }
    return [];
  }
}
