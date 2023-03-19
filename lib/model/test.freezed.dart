// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
mixin _$Test {
  String get id => throw _privateConstructorUsedError;
  String get textField => throw _privateConstructorUsedError;
  bool get yesOrNoField => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call({String id, String textField, bool yesOrNoField});
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textField = null,
    Object? yesOrNoField = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      textField: null == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as String,
      yesOrNoField: null == yesOrNoField
          ? _value.yesOrNoField
          : yesOrNoField // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$_TestCopyWith(_$_Test value, $Res Function(_$_Test) then) =
      __$$_TestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String textField, bool yesOrNoField});
}

/// @nodoc
class __$$_TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res, _$_Test>
    implements _$$_TestCopyWith<$Res> {
  __$$_TestCopyWithImpl(_$_Test _value, $Res Function(_$_Test) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textField = null,
    Object? yesOrNoField = null,
  }) {
    return _then(_$_Test(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      textField: null == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as String,
      yesOrNoField: null == yesOrNoField
          ? _value.yesOrNoField
          : yesOrNoField // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Test implements _Test {
  const _$_Test(
      {required this.id, required this.textField, required this.yesOrNoField});

  factory _$_Test.fromJson(Map<String, dynamic> json) => _$$_TestFromJson(json);

  @override
  final String id;
  @override
  final String textField;
  @override
  final bool yesOrNoField;

  @override
  String toString() {
    return 'Test(id: $id, textField: $textField, yesOrNoField: $yesOrNoField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Test &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textField, textField) ||
                other.textField == textField) &&
            (identical(other.yesOrNoField, yesOrNoField) ||
                other.yesOrNoField == yesOrNoField));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, textField, yesOrNoField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestCopyWith<_$_Test> get copyWith =>
      __$$_TestCopyWithImpl<_$_Test>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestToJson(
      this,
    );
  }
}

abstract class _Test implements Test {
  const factory _Test(
      {required final String id,
      required final String textField,
      required final bool yesOrNoField}) = _$_Test;

  factory _Test.fromJson(Map<String, dynamic> json) = _$_Test.fromJson;

  @override
  String get id;
  @override
  String get textField;
  @override
  bool get yesOrNoField;
  @override
  @JsonKey(ignore: true)
  _$$_TestCopyWith<_$_Test> get copyWith => throw _privateConstructorUsedError;
}
