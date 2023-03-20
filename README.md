# yowl_app

* The name?  Synonym for Yelp: https://www.thesaurus.com/browse/yelp

* Used JSON to Dart to generate models: https://javiercbk.github.io/json_to_dart/

* Used Freezed & JsonSerializable to generate fromJson methods 

* Started building with REST / Dio, to familiarize myself with the API and data and to get something built quickly.

* Switched to Graphql as a learning exercise.  Have not used before with Flutter (or anything else for that matter).

* Obviously there are pros and cons of each approach and even with Graphql, there are countless ways to retrieve the data more/less efficiently.

* Opted for a single query that returned all data needed for the search results and for the details page.

* This could be split into multiple queries, depending on hte data that is required for each page.

* Need to refactor the Card displayed in the search results and the detail card to share common details. 

* The search seems to have the following limitations:
  - Only returns three reviews
  - Review text seem to be truncated (not sure how to get more...)
  - Only returns one photo (I was unable to establish how to return more photos)
  - Therefore, not fancy image carousel or similar to display multiple photos
  
* The following query parameters are fixed as follows:
  - Location (latitude / longitude): fixed to my home location (as this is required)
  - categories: 'restaurants'
  - sortBy: initially 'distance'
  - limit: 10 
  - locale: 'en_CA'

* Could not find a way to get back whether the business offers delivery/take out.

* OpenHoursWidget needs some TLC to cater for multiple hours on the same day.
