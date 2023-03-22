import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/model/models.dart';

class FakeBusinessGraphqlClientImpl implements BusinessGraphqlClient {
  @override
  Future<List<Business>> searchBusinesses({required Query query}) async {
    return Future.value(
      [
        const Business(
          id: '1',
          name: 'Krua Thai Restaurant',
          categories: [
            Category(alias: 'restaurants'),
          ],
          reviews: [
            Review(
              id: '1',
              text: 'Trash',
              user: User(name: 'Alan'),
            ),
          ],
        ),
        const Business(
          id: '2',
          name: 'Thai House Restaurant',
          categories: [
            Category(alias: 'restaurants'),
          ],
          reviews: [
            Review(
              id: '1',
              text: 'So so',
              user: User(name: 'Bob'),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Future<Business> getBusiness({required String businessId}) {
    // TODO: Implement getBusiness
    throw UnimplementedError();
  }

  @override
  Future<List<Review>> getReviews({required String businessId}) {
    // TODO: implement getReviews
    throw UnimplementedError();
  }
}
