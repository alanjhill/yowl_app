import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/model/models.dart';

part 'business_event.dart';

part 'business_state.dart';

class BusinessBloc extends Bloc<BusinessEvent, BusinessState> {
  final _businessRepository = GetIt.instance.get<BusinessRepository>();

  BusinessBloc() : super(const BusinessInitialState()) {
    on<BusinessSearchEvent>(_onBusinessSearchEvent);
    on<BusinessInfoEvent>(_onBusinessInfoEvent);
  }

  /// Search businesses and return required data
  Future<void> _onBusinessSearchEvent(
    BusinessSearchEvent event,
    Emitter<BusinessState> emit,
  ) async {
    // Loading
    emit(const BusinessSearchLoadingState());
    
    // Search
    final results =
        await _businessRepository.searchBusinesses(query: event.query);

    results.when(
      (businesses) {
        emit(BusinessSearchResultsState(
            query: event.query, businessList: businesses));
      },
      (error) {
        emit(BusinessErrorState(message: error.message));
      },
    );
  }

  /// Unused
  Future<void> _onBusinessInfoEvent(
    BusinessInfoEvent event,
    Emitter<BusinessState> emit,
  ) async {
    final business =
        await _businessRepository.getBusiness(businessId: event.businessId);

    business.when(
      (business) async {
        final reviews =
            await _businessRepository.getReviews(businessId: event.businessId);
        reviews.when(
          (reviews) {
            emit(BusinessInfoState(business: business, reviewList: reviews));
          },
          (error) {
            emit(BusinessErrorState(message: error.message));
          },
        );
      },
      (error) {
        emit(BusinessErrorState(message: error.message));
      },
    );
  }
}
