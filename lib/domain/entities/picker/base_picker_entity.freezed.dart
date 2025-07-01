// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_picker_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasePickerEntity _$BasePickerEntityFromJson(Map<String, dynamic> json) {
  return _BasePickerEntity.fromJson(json);
}

/// @nodoc
mixin _$BasePickerEntity {
  int get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this BasePickerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasePickerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasePickerEntityCopyWith<BasePickerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePickerEntityCopyWith<$Res> {
  factory $BasePickerEntityCopyWith(
          BasePickerEntity value, $Res Function(BasePickerEntity) then) =
      _$BasePickerEntityCopyWithImpl<$Res, BasePickerEntity>;
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class _$BasePickerEntityCopyWithImpl<$Res, $Val extends BasePickerEntity>
    implements $BasePickerEntityCopyWith<$Res> {
  _$BasePickerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasePickerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasePickerEntityImplCopyWith<$Res>
    implements $BasePickerEntityCopyWith<$Res> {
  factory _$$BasePickerEntityImplCopyWith(_$BasePickerEntityImpl value,
          $Res Function(_$BasePickerEntityImpl) then) =
      __$$BasePickerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int value});
}

/// @nodoc
class __$$BasePickerEntityImplCopyWithImpl<$Res>
    extends _$BasePickerEntityCopyWithImpl<$Res, _$BasePickerEntityImpl>
    implements _$$BasePickerEntityImplCopyWith<$Res> {
  __$$BasePickerEntityImplCopyWithImpl(_$BasePickerEntityImpl _value,
      $Res Function(_$BasePickerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasePickerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$BasePickerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasePickerEntityImpl implements _BasePickerEntity {
  const _$BasePickerEntityImpl({required this.id, required this.value});

  factory _$BasePickerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasePickerEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int value;

  @override
  String toString() {
    return 'BasePickerEntity(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePickerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of BasePickerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePickerEntityImplCopyWith<_$BasePickerEntityImpl> get copyWith =>
      __$$BasePickerEntityImplCopyWithImpl<_$BasePickerEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasePickerEntityImplToJson(
      this,
    );
  }
}

abstract class _BasePickerEntity implements BasePickerEntity {
  const factory _BasePickerEntity(
      {required final int id,
      required final int value}) = _$BasePickerEntityImpl;

  factory _BasePickerEntity.fromJson(Map<String, dynamic> json) =
      _$BasePickerEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get value;

  /// Create a copy of BasePickerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasePickerEntityImplCopyWith<_$BasePickerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
