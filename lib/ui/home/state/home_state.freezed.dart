// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  AsyncValue<FinancialSummaryEntity> get summary =>
      throw _privateConstructorUsedError;
  DateFilterEntity get selectedDateFilter => throw _privateConstructorUsedError;
  bool get isVisibleValues => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {AsyncValue<FinancialSummaryEntity> summary,
      DateFilterEntity selectedDateFilter,
      bool isVisibleValues});

  $DateFilterEntityCopyWith<$Res> get selectedDateFilter;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? selectedDateFilter = null,
    Object? isVisibleValues = null,
  }) {
    return _then(_value.copyWith(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FinancialSummaryEntity>,
      selectedDateFilter: null == selectedDateFilter
          ? _value.selectedDateFilter
          : selectedDateFilter // ignore: cast_nullable_to_non_nullable
              as DateFilterEntity,
      isVisibleValues: null == isVisibleValues
          ? _value.isVisibleValues
          : isVisibleValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateFilterEntityCopyWith<$Res> get selectedDateFilter {
    return $DateFilterEntityCopyWith<$Res>(_value.selectedDateFilter, (value) {
      return _then(_value.copyWith(selectedDateFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<FinancialSummaryEntity> summary,
      DateFilterEntity selectedDateFilter,
      bool isVisibleValues});

  @override
  $DateFilterEntityCopyWith<$Res> get selectedDateFilter;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? selectedDateFilter = null,
    Object? isVisibleValues = null,
  }) {
    return _then(_$HomeStateImpl(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FinancialSummaryEntity>,
      selectedDateFilter: null == selectedDateFilter
          ? _value.selectedDateFilter
          : selectedDateFilter // ignore: cast_nullable_to_non_nullable
              as DateFilterEntity,
      isVisibleValues: null == isVisibleValues
          ? _value.isVisibleValues
          : isVisibleValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.summary = const AsyncValue.loading(),
      required this.selectedDateFilter,
      this.isVisibleValues = false})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<FinancialSummaryEntity> summary;
  @override
  final DateFilterEntity selectedDateFilter;
  @override
  @JsonKey()
  final bool isVisibleValues;

  @override
  String toString() {
    return 'HomeState(summary: $summary, selectedDateFilter: $selectedDateFilter, isVisibleValues: $isVisibleValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.selectedDateFilter, selectedDateFilter) ||
                other.selectedDateFilter == selectedDateFilter) &&
            (identical(other.isVisibleValues, isVisibleValues) ||
                other.isVisibleValues == isVisibleValues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, summary, selectedDateFilter, isVisibleValues);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final AsyncValue<FinancialSummaryEntity> summary,
      required final DateFilterEntity selectedDateFilter,
      final bool isVisibleValues}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  AsyncValue<FinancialSummaryEntity> get summary;
  @override
  DateFilterEntity get selectedDateFilter;
  @override
  bool get isVisibleValues;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
