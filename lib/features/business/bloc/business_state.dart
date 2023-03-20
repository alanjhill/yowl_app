part of 'business_bloc.dart';

@immutable
abstract class BusinessState {
  const BusinessState();
}

class BusinessInitialState extends BusinessState {
  const BusinessInitialState() : super();
}

class BusinessSearchLoadingState extends BusinessState {
  const BusinessSearchLoadingState();
}

class BusinessSearchResultsState extends BusinessState {
  final Query query;
  final List<Business> businessList;

  const BusinessSearchResultsState(
      {required this.query, required this.businessList})
      : super();
}

class BusinessErrorState extends BusinessState {
  final String message;

  const BusinessErrorState({required this.message}) : super();
}

/// Unused
class BusinessInfoState extends BusinessState {
  final Business business;
  final List<Review> reviewList;

  const BusinessInfoState({required this.business, required this.reviewList})
      : super();
}
