// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorPickerState {
  List<int> get colors => throw _privateConstructorUsedError;
  int get selectedColor => throw _privateConstructorUsedError;

  /// Create a copy of ColorPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorPickerStateCopyWith<ColorPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorPickerStateCopyWith<$Res> {
  factory $ColorPickerStateCopyWith(
          ColorPickerState value, $Res Function(ColorPickerState) then) =
      _$ColorPickerStateCopyWithImpl<$Res, ColorPickerState>;
  @useResult
  $Res call({List<int> colors, int selectedColor});
}

/// @nodoc
class _$ColorPickerStateCopyWithImpl<$Res, $Val extends ColorPickerState>
    implements $ColorPickerStateCopyWith<$Res> {
  _$ColorPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? selectedColor = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorPickerStateImplCopyWith<$Res>
    implements $ColorPickerStateCopyWith<$Res> {
  factory _$$ColorPickerStateImplCopyWith(_$ColorPickerStateImpl value,
          $Res Function(_$ColorPickerStateImpl) then) =
      __$$ColorPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> colors, int selectedColor});
}

/// @nodoc
class __$$ColorPickerStateImplCopyWithImpl<$Res>
    extends _$ColorPickerStateCopyWithImpl<$Res, _$ColorPickerStateImpl>
    implements _$$ColorPickerStateImplCopyWith<$Res> {
  __$$ColorPickerStateImplCopyWithImpl(_$ColorPickerStateImpl _value,
      $Res Function(_$ColorPickerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? selectedColor = null,
  }) {
    return _then(_$ColorPickerStateImpl(
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ColorPickerStateImpl implements _ColorPickerState {
  const _$ColorPickerStateImpl(
      {final List<int> colors = const [0xffAF3DFF, 0xff2CC7E6, 0xffFF3B94],
      this.selectedColor = 0xffAF3DFF})
      : _colors = colors;

  final List<int> _colors;
  @override
  @JsonKey()
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  @JsonKey()
  final int selectedColor;

  @override
  String toString() {
    return 'ColorPickerState(colors: $colors, selectedColor: $selectedColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorPickerStateImpl &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_colors), selectedColor);

  /// Create a copy of ColorPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorPickerStateImplCopyWith<_$ColorPickerStateImpl> get copyWith =>
      __$$ColorPickerStateImplCopyWithImpl<_$ColorPickerStateImpl>(
          this, _$identity);
}

abstract class _ColorPickerState implements ColorPickerState {
  const factory _ColorPickerState(
      {final List<int> colors,
      final int selectedColor}) = _$ColorPickerStateImpl;

  @override
  List<int> get colors;
  @override
  int get selectedColor;

  /// Create a copy of ColorPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorPickerStateImplCopyWith<_$ColorPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
