import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';
import 'package:yowl_app/app/yowl_app.dart';
import 'package:yowl_app/core/api/business_graphql_client.dart';
import 'package:yowl_app/core/repository/business_repository.dart';
import 'package:yowl_app/core/repository/business_repository_graphql_impl.dart';
import 'package:yowl_app/features/business/provider/provider.dart';
import 'package:yowl_app/features/business/widgets/search_result_card.dart';

import 'fake_business_graphql_client_impl.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test search', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          businessRepositoryProvider.overrideWithValue(
            YelpBusinessRepositoryGraphqlImpl(
              FakeBusinessGraphqlClientImpl(),
            ),
          ),
        ],
        child: const YowlApp(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byType(IconButton));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'thai');
    await tester.pumpAndSettle();

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();

    await tester.pumpAndSettle();

    final finder = find.byType(SearchResultCard);
    final count = tester.widgetList<SearchResultCard>(finder).length;
    expect(count, 2);
  });

  testWidgets('Test Search returns no results', (WidgetTester tester) async {

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          businessRepositoryProvider.overrideWithValue(
            YelpBusinessRepositoryGraphqlImpl(
              FakeBusinessGraphqlClientImpl(),
            ),
          ),
        ],
        child: const YowlApp(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byType(IconButton));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'gibberish');
    await tester.pumpAndSettle();

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();

    await tester.pumpAndSettle();

    final finder = find.byType(SearchResultCard);
    final count = tester
        .widgetList<SearchResultCard>(finder)
        .length;
    expect(count, 0);
  });
}
