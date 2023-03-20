# yowl_app

Used JSON to Dart to generate models.

Used Freezed & JsonSerializable to generate fromJson methods 

Only seem to be able to:
 - view three reviews
 - See three photos
 
Started building with REST / DIO, to familiarize myself with the API and data and to get something built quickly.

Switched to Graphql as a learning exercise as I had not used it before with Flutter (or anything else for that matter).

Obviously there are pros and cons of each approach and even with Graphql, there are countless ways to retrieve the data more efficiently.

I opted for a single query that returned all I needed for the search results and for the details page.

This could be split into multiple queries, depending on hte data that is required for each page.

Need to refactor the Card displayed in the search results and the detail card to share common details. 
 




