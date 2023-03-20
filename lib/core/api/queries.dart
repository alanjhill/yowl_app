class Queries {
  static const String searchBusinesses = r'''
    query SearchBusinesses(
        $latitude: Float!,
        $longitude: Float!,
        $radius: Float,
        $categories: String,
        $limit: Int,
        $locale: String,
        $offset: Int,
        $sort_by: String, 
        $term: String
      ) {
      search(
        latitude: $latitude,
        longitude: $longitude,
        radius: $radius
        categories: $categories,
        limit: $limit,
        locale: $locale,
        offset: $offset,
        sort_by: $sort_by, 
        term: $term) {
          business {
            id
            name
            rating
            distance
            hours {
              is_open_now
              open {
                day
                start
                end
              }
            }
            price
            review_count
            reviews(limit: 10) {
              rating
              text
              time_created
              user {
                name
              }
            }
            photos
          }
        }  
      }
  ''';

  static const String getBusiness = r'''
    query GetBusiness($id: ID!) {
      business(id: $id) {
        id
        name
        alias
        rating
        url
        photos
  ''';

  static const String getReviews = r'''
    query GetReviews($business: ID!, $limit: Int) {
      reviews(business: $id, limit: $limit) {
        review {
          id
          text
        }
  ''';
}
