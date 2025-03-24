// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateFilterEntity {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Create a copy of DateFilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateFilterEntityCopyWith<DateFilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateFilterEntityCopyWith<$Res> {
  factory $DateFilterEntityCopyWith(
          DateFilterEntity value, $Res Function(DateFilterEntity) then) =
      _$DateFilterEntityCopyWithImpl<$Res, DateFilterEntity>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$DateFilterEntityCopyWithImpl<$Res, $Val extends DateFilterEntity>
    implements $DateFilterEntityCopyWith<$Res> {
  _$DateFilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateFilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateFilterEntityImplCopyWith<$Res>
    implements $DateFilterEntityCopyWith<$Res> {
  factory _$$DateFilterEntityImplCopyWith(_$DateFilterEntityImpl value,
          $Res Function(_$DateFilterEntityImpl) then) =
      __$$DateFilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$DateFilterEntityImplCopyWithImpl<$Res>
    extends _$DateFilterEntityCopyWithImpl<$Res, _$DateFilterEntityImpl>
    implements _$$DateFilterEntityImplCopyWith<$Res> {
  __$$DateFilterEntityImplCopyWithImpl(_$DateFilterEntityImpl _value,
      $Res Function(_$DateFilterEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateFilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$DateFilterEntityImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateFilterEntityImpl implements _DateFilterEntity {
  const _$DateFilterEntityImpl(
      {required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'DateFilterEntity(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateFilterEntityImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of DateFilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateFilterEntityImplCopyWith<_$DateFilterEntityImpl> get copyWith =>
      __$$DateFilterEntityImplCopyWithImpl<_$DateFilterEntityImpl>(
          this, _$identity);
}

abstract class _DateFilterEntity implements DateFilterEntity {
  const factory _DateFilterEntity(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$DateFilterEntityImpl;

  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of DateFilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateFilterEntityImplCopyWith<_$DateFilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
