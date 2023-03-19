part of 'business_bloc.dart';

@immutable
abstract class BusinessEvent {}

class BusinessSearchEvent extends BusinessEvent {
  final Query query;

  BusinessSearchEvent({required this.query});
}

class BusinessInfoEvent extends BusinessEvent {
  final String businessId;

  BusinessInfoEvent({required this.businessId});
}
