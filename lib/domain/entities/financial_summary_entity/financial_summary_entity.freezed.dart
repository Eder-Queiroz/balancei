// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinancialSummaryEntity _$FinancialSummaryEntityFromJson(
    Map<String, dynamic> json) {
  return _FinancialSummaryEntity.fromJson(json);
}

/// @nodoc
mixin _$FinancialSummaryEntity {
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  double get totalIncome => throw _privateConstructorUsedError;
  double get totalExpense => throw _privateConstructorUsedError;
  double get totalBalance => throw _privateConstructorUsedError;

  /// Serializes this FinancialSummaryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancialSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialSummaryEntityCopyWith<FinancialSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialSummaryEntityCopyWith<$Res> {
  factory $FinancialSummaryEntityCopyWith(FinancialSummaryEntity value,
          $Res Function(FinancialSummaryEntity) then) =
      _$FinancialSummaryEntityCopyWithImpl<$Res, FinancialSummaryEntity>;
  @useResult
  $Res call(
      {List<TransactionEntity> transactions,
      double totalIncome,
      double totalExpense,
      double totalBalance});
}

/// @nodoc
class _$FinancialSummaryEntityCopyWithImpl<$Res,
        $Val extends FinancialSummaryEntity>
    implements $FinancialSummaryEntityCopyWith<$Res> {
  _$FinancialSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? totalBalance = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialSummaryEntityImplCopyWith<$Res>
    implements $FinancialSummaryEntityCopyWith<$Res> {
  factory _$$FinancialSummaryEntityImplCopyWith(
          _$FinancialSummaryEntityImpl value,
          $Res Function(_$FinancialSummaryEntityImpl) then) =
      __$$FinancialSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransactionEntity> transactions,
      double totalIncome,
      double totalExpense,
      double totalBalance});
}

/// @nodoc
class __$$FinancialSummaryEntityImplCopyWithImpl<$Res>
    extends _$FinancialSummaryEntityCopyWithImpl<$Res,
        _$FinancialSummaryEntityImpl>
    implements _$$FinancialSummaryEntityImplCopyWith<$Res> {
  __$$FinancialSummaryEntityImplCopyWithImpl(
      _$FinancialSummaryEntityImpl _value,
      $Res Function(_$FinancialSummaryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancialSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? totalBalance = null,
  }) {
    return _then(_$FinancialSummaryEntityImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialSummaryEntityImpl implements _FinancialSummaryEntity {
  const _$FinancialSummaryEntityImpl(
      {required final List<TransactionEntity> transactions,
      required this.totalIncome,
      required this.totalExpense,
      required this.totalBalance})
      : _transactions = transactions;

  factory _$FinancialSummaryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialSummaryEntityImplFromJson(json);

  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final double totalIncome;
  @override
  final double totalExpense;
  @override
  final double totalBalance;

  @override
  String toString() {
    return 'FinancialSummaryEntity(transactions: $transactions, totalIncome: $totalIncome, totalExpense: $totalExpense, totalBalance: $totalBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialSummaryEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      totalIncome,
      totalExpense,
      totalBalance);

  /// Create a copy of FinancialSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialSummaryEntityImplCopyWith<_$FinancialSummaryEntityImpl>
      get copyWith => __$$FinancialSummaryEntityImplCopyWithImpl<
          _$FinancialSummaryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialSummaryEntityImplToJson(
      this,
    );
  }
}

abstract class _FinancialSummaryEntity implements FinancialSummaryEntity {
  const factory _FinancialSummaryEntity(
      {required final List<TransactionEntity> transactions,
      required final double totalIncome,
      required final double totalExpense,
      required final double totalBalance}) = _$FinancialSummaryEntityImpl;

  factory _FinancialSummaryEntity.fromJson(Map<String, dynamic> json) =
      _$FinancialSummaryEntityImpl.fromJson;

  @override
  List<TransactionEntity> get transactions;
  @override
  double get totalIncome;
  @override
  double get totalExpense;
  @override
  double get totalBalance;

  /// Create a copy of FinancialSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialSummaryEntityImplCopyWith<_$FinancialSummaryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
