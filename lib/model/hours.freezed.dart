// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hours _$HoursFromJson(Map<String, dynamic> json) {
  return _Hours.fromJson(json);
}

/// @nodoc
mixin _$Hours {
  bool? get isOpenNow => throw _privateConstructorUsedError;
  List<OpenHours>? get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoursCopyWith<Hours> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoursCopyWith<$Res> {
  factory $HoursCopyWith(Hours value, $Res Function(Hours) then) =
      _$HoursCopyWithImpl<$Res, Hours>;
  @useResult
  $Res call({bool? isOpenNow, List<OpenHours>? open});
}

/// @nodoc
class _$HoursCopyWithImpl<$Res, $Val extends Hours>
    implements $HoursCopyWith<$Res> {
  _$HoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenNow = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      isOpenNow: freezed == isOpenNow
          ? _value.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as List<OpenHours>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HoursCopyWith<$Res> implements $HoursCopyWith<$Res> {
  factory _$$_HoursCopyWith(_$_Hours value, $Res Function(_$_Hours) then) =
      __$$_HoursCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isOpenNow, List<OpenHours>? open});
}

/// @nodoc
class __$$_HoursCopyWithImpl<$Res> extends _$HoursCopyWithImpl<$Res, _$_Hours>
    implements _$$_HoursCopyWith<$Res> {
  __$$_HoursCopyWithImpl(_$_Hours _value, $Res Function(_$_Hours) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenNow = freezed,
    Object? open = freezed,
  }) {
    return _then(_$_Hours(
      isOpenNow: freezed == isOpenNow
          ? _value.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      open: freezed == open
          ? _value._open
          : open // ignore: cast_nullable_to_non_nullable
              as List<OpenHours>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Hours implements _Hours {
  const _$_Hours({this.isOpenNow, final List<OpenHours>? open}) : _open = open;

  factory _$_Hours.fromJson(Map<String, dynamic> json) =>
      _$$_HoursFromJson(json);

  @override
  final bool? isOpenNow;
  final List<OpenHours>? _open;
  @override
  List<OpenHours>? get open {
    final value = _open;
    if (value == null) return null;
    if (_open is EqualUnmodifiableListView) return _open;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hours(isOpenNow: $isOpenNow, open: $open)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hours &&
            (identical(other.isOpenNow, isOpenNow) ||
                other.isOpenNow == isOpenNow) &&
            const DeepCollectionEquality().equals(other._open, _open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isOpenNow, const DeepCollectionEquality().hash(_open));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HoursCopyWith<_$_Hours> get copyWith =>
      __$$_HoursCopyWithImpl<_$_Hours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HoursToJson(
      this,
    );
  }
}

abstract class _Hours implements Hours {
  const factory _Hours({final bool? isOpenNow, final List<OpenHours>? open}) =
      _$_Hours;

  factory _Hours.fromJson(Map<String, dynamic> json) = _$_Hours.fromJson;

  @override
  bool? get isOpenNow;
  @override
  List<OpenHours>? get open;
  @override
  @JsonKey(ignore: true)
  _$$_HoursCopyWith<_$_Hours> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenHours _$OpenHoursFromJson(Map<String, dynamic> json) {
  return _OpenHours.fromJson(json);
}

/// @nodoc
mixin _$OpenHours {
  int? get day => throw _privateConstructorUsedError;
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenHoursCopyWith<OpenHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenHoursCopyWith<$Res> {
  factory $OpenHoursCopyWith(OpenHours value, $Res Function(OpenHours) then) =
      _$OpenHoursCopyWithImpl<$Res, OpenHours>;
  @useResult
  $Res call({int? day, String? start, String? end});
}

/// @nodoc
class _$OpenHoursCopyWithImpl<$Res, $Val extends OpenHours>
    implements $OpenHoursCopyWith<$Res> {
  _$OpenHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenHoursCopyWith<$Res> implements $OpenHoursCopyWith<$Res> {
  factory _$$_OpenHoursCopyWith(
          _$_OpenHours value, $Res Function(_$_OpenHours) then) =
      __$$_OpenHoursCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? day, String? start, String? end});
}

/// @nodoc
class __$$_OpenHoursCopyWithImpl<$Res>
    extends _$OpenHoursCopyWithImpl<$Res, _$_OpenHours>
    implements _$$_OpenHoursCopyWith<$Res> {
  __$$_OpenHoursCopyWithImpl(
      _$_OpenHours _value, $Res Function(_$_OpenHours) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_OpenHours(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_OpenHours implements _OpenHours {
  const _$_OpenHours({this.day, this.start, this.end});

  factory _$_OpenHours.fromJson(Map<String, dynamic> json) =>
      _$$_OpenHoursFromJson(json);

  @override
  final int? day;
  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'OpenHours(day: $day, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenHours &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenHoursCopyWith<_$_OpenHours> get copyWith =>
      __$$_OpenHoursCopyWithImpl<_$_OpenHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenHoursToJson(
      this,
    );
  }
}

abstract class _OpenHours implements OpenHours {
  const factory _OpenHours(
      {final int? day, final String? start, final String? end}) = _$_OpenHours;

  factory _OpenHours.fromJson(Map<String, dynamic> json) =
      _$_OpenHours.fromJson;

  @override
  int? get day;
  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$$_OpenHoursCopyWith<_$_OpenHours> get copyWith =>
      throw _privateConstructorUsedError;
}
