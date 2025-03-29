// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthPickerState {
  int get year => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  bool get isForward => throw _privateConstructorUsedError;

  /// Create a copy of MonthPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthPickerStateCopyWith<MonthPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthPickerStateCopyWith<$Res> {
  factory $MonthPickerStateCopyWith(
          MonthPickerState value, $Res Function(MonthPickerState) then) =
      _$MonthPickerStateCopyWithImpl<$Res, MonthPickerState>;
  @useResult
  $Res call({int year, DateTime selectedDate, bool isForward});
}

/// @nodoc
class _$MonthPickerStateCopyWithImpl<$Res, $Val extends MonthPickerState>
    implements $MonthPickerStateCopyWith<$Res> {
  _$MonthPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? selectedDate = null,
    Object? isForward = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isForward: null == isForward
          ? _value.isForward
          : isForward // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthPickerStateImplCopyWith<$Res>
    implements $MonthPickerStateCopyWith<$Res> {
  factory _$$MonthPickerStateImplCopyWith(_$MonthPickerStateImpl value,
          $Res Function(_$MonthPickerStateImpl) then) =
      __$$MonthPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, DateTime selectedDate, bool isForward});
}

/// @nodoc
class __$$MonthPickerStateImplCopyWithImpl<$Res>
    extends _$MonthPickerStateCopyWithImpl<$Res, _$MonthPickerStateImpl>
    implements _$$MonthPickerStateImplCopyWith<$Res> {
  __$$MonthPickerStateImplCopyWithImpl(_$MonthPickerStateImpl _value,
      $Res Function(_$MonthPickerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? selectedDate = null,
    Object? isForward = null,
  }) {
    return _then(_$MonthPickerStateImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isForward: null == isForward
          ? _value.isForward
          : isForward // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MonthPickerStateImpl extends _MonthPickerState {
  const _$MonthPickerStateImpl(
      {required this.year, required this.selectedDate, this.isForward = false})
      : super._();

  @override
  final int year;
  @override
  final DateTime selectedDate;
  @override
  @JsonKey()
  final bool isForward;

  @override
  String toString() {
    return 'MonthPickerState(year: $year, selectedDate: $selectedDate, isForward: $isForward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthPickerStateImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.isForward, isForward) ||
                other.isForward == isForward));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, selectedDate, isForward);

  /// Create a copy of MonthPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthPickerStateImplCopyWith<_$MonthPickerStateImpl> get copyWith =>
      __$$MonthPickerStateImplCopyWithImpl<_$MonthPickerStateImpl>(
          this, _$identity);
}

abstract class _MonthPickerState extends MonthPickerState {
  const factory _MonthPickerState(
      {required final int year,
      required final DateTime selectedDate,
      final bool isForward}) = _$MonthPickerStateImpl;
  const _MonthPickerState._() : super._();

  @override
  int get year;
  @override
  DateTime get selectedDate;
  @override
  bool get isForward;

  /// Create a copy of MonthPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthPickerStateImplCopyWith<_$MonthPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
