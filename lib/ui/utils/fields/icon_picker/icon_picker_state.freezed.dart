// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IconPickerState {
  List<int> get icons => throw _privateConstructorUsedError;
  int get selectedIcon => throw _privateConstructorUsedError;

  /// Create a copy of IconPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IconPickerStateCopyWith<IconPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconPickerStateCopyWith<$Res> {
  factory $IconPickerStateCopyWith(
          IconPickerState value, $Res Function(IconPickerState) then) =
      _$IconPickerStateCopyWithImpl<$Res, IconPickerState>;
  @useResult
  $Res call({List<int> icons, int selectedIcon});
}

/// @nodoc
class _$IconPickerStateCopyWithImpl<$Res, $Val extends IconPickerState>
    implements $IconPickerStateCopyWith<$Res> {
  _$IconPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IconPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
    Object? selectedIcon = null,
  }) {
    return _then(_value.copyWith(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconPickerStateImplCopyWith<$Res>
    implements $IconPickerStateCopyWith<$Res> {
  factory _$$IconPickerStateImplCopyWith(_$IconPickerStateImpl value,
          $Res Function(_$IconPickerStateImpl) then) =
      __$$IconPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> icons, int selectedIcon});
}

/// @nodoc
class __$$IconPickerStateImplCopyWithImpl<$Res>
    extends _$IconPickerStateCopyWithImpl<$Res, _$IconPickerStateImpl>
    implements _$$IconPickerStateImplCopyWith<$Res> {
  __$$IconPickerStateImplCopyWithImpl(
      _$IconPickerStateImpl _value, $Res Function(_$IconPickerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IconPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
    Object? selectedIcon = null,
  }) {
    return _then(_$IconPickerStateImpl(
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IconPickerStateImpl implements _IconPickerState {
  const _$IconPickerStateImpl(
      {final List<int> icons = const [0xef4c, 0xef2c, 0xe25a],
      this.selectedIcon = 0xef4c})
      : _icons = icons;

  final List<int> _icons;
  @override
  @JsonKey()
  List<int> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  @JsonKey()
  final int selectedIcon;

  @override
  String toString() {
    return 'IconPickerState(icons: $icons, selectedIcon: $selectedIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconPickerStateImpl &&
            const DeepCollectionEquality().equals(other._icons, _icons) &&
            (identical(other.selectedIcon, selectedIcon) ||
                other.selectedIcon == selectedIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_icons), selectedIcon);

  /// Create a copy of IconPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconPickerStateImplCopyWith<_$IconPickerStateImpl> get copyWith =>
      __$$IconPickerStateImplCopyWithImpl<_$IconPickerStateImpl>(
          this, _$identity);
}

abstract class _IconPickerState implements IconPickerState {
  const factory _IconPickerState(
      {final List<int> icons, final int selectedIcon}) = _$IconPickerStateImpl;

  @override
  List<int> get icons;
  @override
  int get selectedIcon;

  /// Create a copy of IconPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconPickerStateImplCopyWith<_$IconPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
