// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRequestModel _$GetRequestModelFromJson(Map<String, dynamic> json) {
  return _GetRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetRequestModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<GetRequestDatum> get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  /// Serializes this GetRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRequestModelCopyWith<GetRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRequestModelCopyWith<$Res> {
  factory $GetRequestModelCopyWith(
          GetRequestModel value, $Res Function(GetRequestModel) then) =
      _$GetRequestModelCopyWithImpl<$Res, GetRequestModel>;
  @useResult
  $Res call(
      {bool success,
      String message,
      List<GetRequestDatum> data,
      int statusCode});
}

/// @nodoc
class _$GetRequestModelCopyWithImpl<$Res, $Val extends GetRequestModel>
    implements $GetRequestModelCopyWith<$Res> {
  _$GetRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetRequestDatum>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRequestModelImplCopyWith<$Res>
    implements $GetRequestModelCopyWith<$Res> {
  factory _$$GetRequestModelImplCopyWith(_$GetRequestModelImpl value,
          $Res Function(_$GetRequestModelImpl) then) =
      __$$GetRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      List<GetRequestDatum> data,
      int statusCode});
}

/// @nodoc
class __$$GetRequestModelImplCopyWithImpl<$Res>
    extends _$GetRequestModelCopyWithImpl<$Res, _$GetRequestModelImpl>
    implements _$$GetRequestModelImplCopyWith<$Res> {
  __$$GetRequestModelImplCopyWithImpl(
      _$GetRequestModelImpl _value, $Res Function(_$GetRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$GetRequestModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetRequestDatum>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRequestModelImpl implements _GetRequestModel {
  const _$GetRequestModelImpl(
      {required this.success,
      required this.message,
      required final List<GetRequestDatum> data,
      required this.statusCode})
      : _data = data;

  factory _$GetRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRequestModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  final List<GetRequestDatum> _data;
  @override
  List<GetRequestDatum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'GetRequestModel(success: $success, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data), statusCode);

  /// Create a copy of GetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestModelImplCopyWith<_$GetRequestModelImpl> get copyWith =>
      __$$GetRequestModelImplCopyWithImpl<_$GetRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetRequestModel implements GetRequestModel {
  const factory _GetRequestModel(
      {required final bool success,
      required final String message,
      required final List<GetRequestDatum> data,
      required final int statusCode}) = _$GetRequestModelImpl;

  factory _GetRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetRequestModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<GetRequestDatum> get data;
  @override
  int get statusCode;

  /// Create a copy of GetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRequestModelImplCopyWith<_$GetRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
