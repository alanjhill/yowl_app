//Extension for GraphQL response

import 'package:graphql/client.dart';
import 'package:yowl_app/model/business.dart';
import 'package:yowl_app/model/models.dart';

extension ResponseTo on QueryResult {
  T? retrieveResult<T>({String? tag}) {
    T? result;
    if (exception != null) {
      throw Exception('Error: ${exception.toString()}');
    } else {
      if (tag != null) {
        result = data![tag] == null
            ? null
            : data![tag]['error'] != null
                ? throw WrongUserDataException()
                : _createFromJSON<T>(data![tag]);
      }
      return result;
    }
  }

  List<T> retrieveResultAsList<T>({required String tag}) {
    List<T> result;
    if (exception != null) {
      throw Exception('Error: ${exception.toString()}');
    } else {
      result =
          (data![tag] as List).map((e) => (_createFromJSON<T>(e)!)).toList();
      return result;
    }
  }
}

T? _createFromJSON<T>(Map<String, dynamic> json) {
  Type typeOf<V>() => V;
  final type = typeOf<T>();
  if (type == typeOf<Business>()) {
    return Business.fromJson(json) as T;
  } else if (type == typeOf<Review>()) {
    return Review.fromJson(json) as T;
  } else if (typeOf<dynamic>() == type || typeOf<void>() == type) {
    return null;
  }
  throw ArgumentError(
      'Looks like you forgot to add processing for type ${type.toString()}');
}

class WrongUserDataException implements Exception {}
