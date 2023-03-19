import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yowl_app/core/api/api_service.dart';
import 'package:yowl_app/core/api/business_api_client.dart';
import 'package:yowl_app/core/api/failure.dart';
import 'package:yowl_app/model/models.dart';

class YelpBusinessApiClientImpl extends ApiService
    implements BusinessApiClient {
  YelpBusinessApiClientImpl({required dio}) : super(dio);

  @override
  Future<List<Business>> searchBusinesses({required Query query}) async {
    try {
      // TODO: Use the toJson for this
      final params = query.toJson();
      final response = await get(
        'businesses/search',
        params: params,
      );

      final results =
          List<Map<String, dynamic>>.from(response.data['businesses']);
      final businesses = results.map((r) => Business.fromJson(r)).toList();
      return businesses;
    } on DioError catch (e, s) {
      print(e);
      print(s);
      if (e.error is SocketException) {
        throw Failure(
          message: 'No internet connection',
          exception: e,
        );
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
      );
    }
  }

  @override
  Future<Business> getBusiness({required String businessId}) async {
    try {
      final response = await get('businesses/$businessId');

      final business = Business.fromJson(response.data);
      return business;
    } on DioError catch (e, s) {
      print(e);
      print(s);
      if (e.error is SocketException) {
        throw Failure(
          message: 'No internet connection',
          exception: e,
        );
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
      );
    }
  }

  @override
  Future<List<Review>> getReviews({required String businessId}) async {
    try {
      final params = {'limit': 10};
      final response =
          await get('businesses/$businessId/reviews', params: params);

      final results = List<Map<String, dynamic>>.from(response.data['reviews']);
      final reviews = results.map((r) => Review.fromJson(r)).toList();
      return reviews;
    } on DioError catch (e, s) {
      print(e);
      print(s);
      if (e.error is SocketException) {
        throw Failure(
          message: 'No internet connection',
          exception: e,
        );
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
      );
    }
  }
}
