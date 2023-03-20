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

  BusinessBloc() : super(BusinessInitialState(query: Query.withDefaults())) {
    on<BusinessSearchEvent>(_onBusinessSearchEvent);
    on<BusinessUpdateSortByEvent>(_onBusinessUpdateSortByEvent);
    on<BusinessInfoEvent>(_onBusinessInfoEvent);
  }

  /// Search businesses and return required data
  Future<void> _onBusinessSearchEvent(
    BusinessSearchEvent event,
    Emitter<BusinessState> emit,
  ) async {
    // Loading
    emit(BusinessSearchLoadingState(query: state.query));

    // Search
    final results =
        await _businessRepository.searchBusinesses(query: event.query);

    results.when(
      (businesses) {
        emit(BusinessSearchResultsState(
            query: event.query, businessList: businesses));
      },
      (error) {
        emit(BusinessErrorState(query: state.query, message: error.message));
      },
    );
  }

  Future<void> _onBusinessUpdateSortByEvent(
    BusinessUpdateSortByEvent event,
    Emitter<BusinessState> emit,
  ) async {
    final query = state.query.copyWith(
      sortBy: event.sortBy,
    );
    emit(BusinessSearchSortByUpdatedState(query: query));
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
            emit(BusinessInfoState(
                query: state.query, business: business, reviewList: reviews));
          },
          (error) {
            emit(
                BusinessErrorState(query: state.query, message: error.message));
          },
        );
      },
      (error) {
        emit(BusinessErrorState(query: state.query, message: error.message));
      },
    );
  }
}
