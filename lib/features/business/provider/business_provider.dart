import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yowl_app/core/api/business_graphql_client_impl.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';
import 'package:yowl_app/features/business/provider/provider.dart';
import 'package:yowl_app/model/models.dart';

final businessRepositoryProvider = Provider<BusinessRepository>((ref) {
  final graphApiClient = ref.watch(businessGraphqlClientProvider);
  return YelpBusinessRepositoryGraphqlImpl(graphApiClient);
});

class BusinessStateNotifier extends StateNotifier<BusinessState> {
  BusinessStateNotifier(this.businessRepository)
      : super(BusinessInitialState(query: Query.withDefaults()));

  BusinessRepository businessRepository;

  Future<void> searchBusinesses({required Query query}) async {
    state = BusinessSearchLoadingState(query: query);
    await businessRepository.searchBusinesses(query: query).then((data) {
      data.when((success) {
        state = BusinessSearchResultsState(query: query, businessList: success);
      }, (failure) {
        state = BusinessErrorState(query: query, message: failure.message);
      });
    });
  }

  Future<void> updateSortBy({required String sortBy}) async {
    state = BusinessSearchLoadingState(query: state.query);
    final query = state.query.copyWith(
      sortBy: sortBy,
    );
    state = BusinessSearchSortByUpdatedState(query: query);
  }
}

final businessStateProvider =
    StateNotifierProvider.autoDispose<BusinessStateNotifier, BusinessState>(
        (ref) {
  return BusinessStateNotifier(ref.read(businessRepositoryProvider));
});
