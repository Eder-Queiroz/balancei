// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionCategoryEntity _$TransactionCategoryEntityFromJson(
    Map<String, dynamic> json) {
  return _TransactionCategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$TransactionCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  /// Serializes this TransactionCategoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCategoryEntityCopyWith<TransactionCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryEntityCopyWith<$Res> {
  factory $TransactionCategoryEntityCopyWith(TransactionCategoryEntity value,
          $Res Function(TransactionCategoryEntity) then) =
      _$TransactionCategoryEntityCopyWithImpl<$Res, TransactionCategoryEntity>;
  @useResult
  $Res call({String id, String description, String icon, int color});
}

/// @nodoc
class _$TransactionCategoryEntityCopyWithImpl<$Res,
        $Val extends TransactionCategoryEntity>
    implements $TransactionCategoryEntityCopyWith<$Res> {
  _$TransactionCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionCategoryEntityImplCopyWith<$Res>
    implements $TransactionCategoryEntityCopyWith<$Res> {
  factory _$$TransactionCategoryEntityImplCopyWith(
          _$TransactionCategoryEntityImpl value,
          $Res Function(_$TransactionCategoryEntityImpl) then) =
      __$$TransactionCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String description, String icon, int color});
}

/// @nodoc
class __$$TransactionCategoryEntityImplCopyWithImpl<$Res>
    extends _$TransactionCategoryEntityCopyWithImpl<$Res,
        _$TransactionCategoryEntityImpl>
    implements _$$TransactionCategoryEntityImplCopyWith<$Res> {
  __$$TransactionCategoryEntityImplCopyWithImpl(
      _$TransactionCategoryEntityImpl _value,
      $Res Function(_$TransactionCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_$TransactionCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionCategoryEntityImpl implements _TransactionCategoryEntity {
  const _$TransactionCategoryEntityImpl(
      {required this.id,
      required this.description,
      required this.icon,
      required this.color});

  factory _$TransactionCategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionCategoryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final String icon;
  @override
  final int color;

  @override
  String toString() {
    return 'TransactionCategoryEntity(id: $id, description: $description, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, icon, color);

  /// Create a copy of TransactionCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCategoryEntityImplCopyWith<_$TransactionCategoryEntityImpl>
      get copyWith => __$$TransactionCategoryEntityImplCopyWithImpl<
          _$TransactionCategoryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionCategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _TransactionCategoryEntity implements TransactionCategoryEntity {
  const factory _TransactionCategoryEntity(
      {required final String id,
      required final String description,
      required final String icon,
      required final int color}) = _$TransactionCategoryEntityImpl;

  factory _TransactionCategoryEntity.fromJson(Map<String, dynamic> json) =
      _$TransactionCategoryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  String get icon;
  @override
  int get color;

  /// Create a copy of TransactionCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCategoryEntityImplCopyWith<_$TransactionCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
