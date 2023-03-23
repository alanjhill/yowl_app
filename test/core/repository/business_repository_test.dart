import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:integration_test/integration_test.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';
import 'package:yowl_app/model/models.dart';

class MockBusinessRepository extends Mock implements BusinessRepository {}

class MockBusinessGraphqlClient extends Mock implements BusinessGraphqlClient {}

void main() {
  //late BusinessRepository mockedBusinessRepository;
  late BusinessGraphqlClient mockedBusinessGraphqlClient;

  setUpAll(() {
    mockedBusinessGraphqlClient = MockBusinessGraphqlClient();
    final dependencyInjection = GetIt.instance;
    dependencyInjection.registerFactory<BusinessGraphqlClient>(
        () => mockedBusinessGraphqlClient);
    GetIt.instance.registerSingleton<BusinessRepository>(
        YelpBusinessRepositoryGraphqlImpl());
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

      final businessRepository = GetIt.instance.get<BusinessRepository>();
      final results = await businessRepository.searchBusinesses(query: query);
      final businesses = results.tryGetSuccess()!;

      expect(results.isSuccess(), true);
      expect(businesses.length, 2);
      expect(businesses[0].name, 'Krua Thai Restaurant');
    },
  );
  
  test('Test retrieve business throws error', () async {
    const query = Query(categories: 'restaurants', term: 'thai');
    
    when(() => mockedBusinessGraphqlClient.searchBusinesses(query: query))
      .thenThrow(Exception('Something went wrong'));
    
    final businessRepository = GetIt.instance.get<BusinessRepository>();
    final results = await businessRepository.searchBusinesses(query: query);
    
    expect(results.isError(), true);
  });
  
  test('Test retrieve businesses returns no results', () async  {
    const query = Query(categories: 'restaurants', term: 'thai');
    
    when(() => mockedBusinessGraphqlClient.searchBusinesses(query: query))
      .thenAnswer((invocation) => Future.value([]));
    
    final businessRepository = GetIt.instance.get<BusinessRepository>();
    final results = await businessRepository.searchBusinesses(query: query);
    final businesses = results.tryGetSuccess()!;
    
    expect(results.isSuccess(), true);
    expect(businesses.length, 0);
  });
}
