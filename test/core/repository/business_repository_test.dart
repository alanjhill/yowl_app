import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/api/business_graphql_client_impl.dart';
import 'package:yowl_app/core/exception/failure.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';
import 'package:yowl_app/features/business/provider/business_provider.dart';
import 'package:yowl_app/model/models.dart';

class MockBusinessRepository extends Mock implements BusinessRepository {}

class MockBusinessGraphqlClient extends Mock implements BusinessGraphqlClient {}

void main() {
  late BusinessGraphqlClient mockedBusinessGraphqlClient;
  late ProviderContainer container;

  setUp(() {
    mockedBusinessGraphqlClient = MockBusinessGraphqlClient();
    container = ProviderContainer(overrides: [
      businessGraphqlClientProvider
          .overrideWith((ref) => mockedBusinessGraphqlClient),
      businessRepositoryProvider.overrideWith((ref) =>
          YelpBusinessRepositoryGraphqlImpl(
              ref.read(businessGraphqlClientProvider))),
    ]);
  });

  test(
    'Test retrieve businesses',
    () async {
      const query = Query(categories: 'restaurants', term: 'thai');

      when(() => mockedBusinessGraphqlClient.searchBusinesses(query: query))
          .thenAnswer(
        (invocation) => Future.value(
          [
            const Business(
              id: '1',
              name: 'Krua Thai Restaurant',
              categories: [
                Category(alias: 'restaurants'),
              ],
            ),
            const Business(
              id: '2',
              name: 'Thai House Restaurant',
              categories: [
                Category(alias: 'restaurants'),
              ],
            ),
          ],
        ),
      );

      final businessRepository = container.read(businessRepositoryProvider);
      final results = await businessRepository.searchBusinesses(query: query);
      final businesses = results.tryGetSuccess()!;

      expect(results.isSuccess(), true);
      expect(businesses.length, 2);
      expect(businesses[0].name, 'Krua Thai Restaurant');
    },
  );

  test('Test business does not exist', () async {
    const query = Query(categories: 'restaurants', term: 'thai');

    when(() => mockedBusinessGraphqlClient.searchBusinesses(query: query))
        .thenAnswer((invocation) => Future.value([]));

    final businessRepository = container.read(businessRepositoryProvider);
    final results = await businessRepository.searchBusinesses(query: query);

    expect(results.isSuccess(), true);
    expect(results.tryGetSuccess()?.length, 0);
  });

  test('Test business API call fails', () async {
    const query = Query(categories: 'restaurants', term: 'thai');

    when(() => mockedBusinessGraphqlClient.searchBusinesses(query: query))
        .thenThrow(Failure(
            message: 'API call failed', exception: const SocketException('')));

    final businessRepository = container.read(businessRepositoryProvider);
    final results = await businessRepository.searchBusinesses(query: query);

    expect(results.isError(), true);
    expect(results.tryGetError()?.message, 'API call failed');
  });

  tearDown(() {
    container.dispose();
  });
}
