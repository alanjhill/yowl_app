import 'package:flutter/foundation.dart';
import 'package:yowl_app/model/models.dart';

@immutable
class BusinessState {
  final Query query;

  const BusinessState({required this.query});
}

class BusinessInitialState extends BusinessState {
  const BusinessInitialState({required super.query}) : super();
}

class BusinessSearchLoadingState extends BusinessState {
  const BusinessSearchLoadingState({required super.query});
}

class BusinessSearchSortByUpdatedState extends BusinessState {
  const BusinessSearchSortByUpdatedState({required super.query}) : super();
}

class BusinessSearchResultsState extends BusinessState {
  final List<Business> businessList;

  const BusinessSearchResultsState(
      {required super.query, required this.businessList})
      : super();
}

class BusinessErrorState extends BusinessState {
  final String message;

  const BusinessErrorState({required super.query, required this.message})
      : super();
}

/// Unused
class BusinessInfoState extends BusinessState {
  final Business business;
  final List<Review> reviewList;

  const BusinessInfoState(
      {required super.query, required this.business, required this.reviewList})
      : super();
}
