import 'package:graphql/client.dart';
import 'package:yowl_app/app/app_config.dart';

abstract class GraphQLService {
  late final GraphQLClient client;

  GraphQLService() {
    // Authentication
    final authLink = AuthLink(
      getToken: () async => 'Bearer ${AppConfig().apiKey}',
    );

    // Http
    final httpLink = HttpLink(
      AppConfig().graphqlUrl,
    );

    final link = authLink.concat(httpLink);

    client = GraphQLClient(
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
      ),
      link: link,
    );
  }
}
