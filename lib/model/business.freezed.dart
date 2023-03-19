// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String? get id => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get isClosed => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  List<String>? get transactions => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get displayPhone => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {String? id,
      String? alias,
      String? name,
      String? imageUrl,
      bool? isClosed,
      String? url,
      int? reviewCount,
      List<Category>? categories,
      double? rating,
      Coordinates? coordinates,
      List<String>? transactions,
      Location? location,
      String? phone,
      String? displayPhone,
      double? distance,
      String? price});

  $CoordinatesCopyWith<$Res>? get coordinates;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? isClosed = freezed,
    Object? url = freezed,
    Object? reviewCount = freezed,
    Object? categories = freezed,
    Object? rating = freezed,
    Object? coordinates = freezed,
    Object? transactions = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? displayPhone = freezed,
    Object? distance = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPhone: freezed == displayPhone
          ? _value.displayPhone
          : displayPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? alias,
      String? name,
      String? imageUrl,
      bool? isClosed,
      String? url,
      int? reviewCount,
      List<Category>? categories,
      double? rating,
      Coordinates? coordinates,
      List<String>? transactions,
      Location? location,
      String? phone,
      String? displayPhone,
      double? distance,
      String? price});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$_Business>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? isClosed = freezed,
    Object? url = freezed,
    Object? reviewCount = freezed,
    Object? categories = freezed,
    Object? rating = freezed,
    Object? coordinates = freezed,
    Object? transactions = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? displayPhone = freezed,
    Object? distance = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Business(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPhone: freezed == displayPhone
          ? _value.displayPhone
          : displayPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Business implements _Business {
  const _$_Business(
      {this.id,
      this.alias,
      this.name,
      this.imageUrl,
      this.isClosed,
      this.url,
      this.reviewCount,
      final List<Category>? categories,
      this.rating,
      this.coordinates,
      final List<String>? transactions,
      this.location,
      this.phone,
      this.displayPhone,
      this.distance,
      this.price})
      : _categories = categories,
        _transactions = transactions;

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String? id;
  @override
  final String? alias;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final bool? isClosed;
  @override
  final String? url;
  @override
  final int? reviewCount;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? rating;
  @override
  final Coordinates? coordinates;
  final List<String>? _transactions;
  @override
  List<String>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? location;
  @override
  final String? phone;
  @override
  final String? displayPhone;
  @override
  final double? distance;
  @override
  final String? price;

  @override
  String toString() {
    return 'Business(id: $id, alias: $alias, name: $name, imageUrl: $imageUrl, isClosed: $isClosed, url: $url, reviewCount: $reviewCount, categories: $categories, rating: $rating, coordinates: $coordinates, transactions: $transactions, location: $location, phone: $phone, displayPhone: $displayPhone, distance: $distance, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.displayPhone, displayPhone) ||
                other.displayPhone == displayPhone) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      alias,
      name,
      imageUrl,
      isClosed,
      url,
      reviewCount,
      const DeepCollectionEquality().hash(_categories),
      rating,
      coordinates,
      const DeepCollectionEquality().hash(_transactions),
      location,
      phone,
      displayPhone,
      distance,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      {final String? id,
      final String? alias,
      final String? name,
      final String? imageUrl,
      final bool? isClosed,
      final String? url,
      final int? reviewCount,
      final List<Category>? categories,
      final double? rating,
      final Coordinates? coordinates,
      final List<String>? transactions,
      final Location? location,
      final String? phone,
      final String? displayPhone,
      final double? distance,
      final String? price}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String? get id;
  @override
  String? get alias;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  bool? get isClosed;
  @override
  String? get url;
  @override
  int? get reviewCount;
  @override
  List<Category>? get categories;
  @override
  double? get rating;
  @override
  Coordinates? get coordinates;
  @override
  List<String>? get transactions;
  @override
  Location? get location;
  @override
  String? get phone;
  @override
  String? get displayPhone;
  @override
  double? get distance;
  @override
  String? get price;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
