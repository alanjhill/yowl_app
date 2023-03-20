import 'package:yowl_app/model/models.dart';

extension ReviewList on List<Review> {
  void sortByTimeCreated() {
    sort(
          (a, b) => a.timeCreated == null
          ? 1
          : b.timeCreated == null
          ? -1
          : a.timeCreated?.compareTo(b.timeCreated!) ?? -1,
    );
  }
}
