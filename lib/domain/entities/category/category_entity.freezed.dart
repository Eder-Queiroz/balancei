// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEntity {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get iconCodePoint => throw _privateConstructorUsedError;
  int get colorHex => throw _privateConstructorUsedError;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call({int id, String description, int iconCodePoint, int colorHex});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? iconCodePoint = null,
    Object? colorHex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconCodePoint: null == iconCodePoint
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as int,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntityImplCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$CategoryEntityImplCopyWith(_$CategoryEntityImpl value,
          $Res Function(_$CategoryEntityImpl) then) =
      __$$CategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description, int iconCodePoint, int colorHex});
}

/// @nodoc
class __$$CategoryEntityImplCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$CategoryEntityImpl>
    implements _$$CategoryEntityImplCopyWith<$Res> {
  __$$CategoryEntityImplCopyWithImpl(
      _$CategoryEntityImpl _value, $Res Function(_$CategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? iconCodePoint = null,
    Object? colorHex = null,
  }) {
    return _then(_$CategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconCodePoint: null == iconCodePoint
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as int,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoryEntityImpl implements _CategoryEntity {
  const _$CategoryEntityImpl(
      {required this.id,
      required this.description,
      required this.iconCodePoint,
      required this.colorHex});

  @override
  final int id;
  @override
  final String description;
  @override
  final int iconCodePoint;
  @override
  final int colorHex;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, description: $description, iconCodePoint: $iconCodePoint, colorHex: $colorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconCodePoint, iconCodePoint) ||
                other.iconCodePoint == iconCodePoint) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, iconCodePoint, colorHex);

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      __$$CategoryEntityImplCopyWithImpl<_$CategoryEntityImpl>(
          this, _$identity);
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {required final int id,
      required final String description,
      required final int iconCodePoint,
      required final int colorHex}) = _$CategoryEntityImpl;

  @override
  int get id;
  @override
  String get description;
  @override
  int get iconCodePoint;
  @override
  int get colorHex;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
