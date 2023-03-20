// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      id: json['id'] as String?,
      alias: json['alias'] as String?,
      name: json['name'] as String?,
      isClosed: json['is_closed'] as bool?,
      url: json['url'] as String?,
      reviewCount: json['review_count'] as int?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hours: (json['hours'] as List<dynamic>?)
          ?.map((e) => Hours.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      displayPhone: json['display_phone'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'name': instance.name,
      'is_closed': instance.isClosed,
      'url': instance.url,
      'review_count': instance.reviewCount,
      'reviews': instance.reviews,
      'categories': instance.categories,
      'photos': instance.photos,
      'hours': instance.hours,
      'rating': instance.rating,
      'coordinates': instance.coordinates,
      'transactions': instance.transactions,
      'location': instance.location,
      'phone': instance.phone,
      'display_phone': instance.displayPhone,
      'distance': instance.distance,
      'price': instance.price,
    };
