// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TransactionCategoriesTableTable extends TransactionCategoriesTable
    with
        TableInfo<$TransactionCategoriesTableTable,
            TransactionCategoriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionCategoriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<int> icon = GeneratedColumn<int>(
      'icon', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, description, icon, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_categories_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<TransactionCategoriesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionCategoriesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionCategoriesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      icon: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}icon'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
    );
  }

  @override
  $TransactionCategoriesTableTable createAlias(String alias) {
    return $TransactionCategoriesTableTable(attachedDatabase, alias);
  }
}

class TransactionCategoriesTableData extends DataClass
    implements Insertable<TransactionCategoriesTableData> {
  final int id;
  final String description;
  final int icon;
  final int color;
  const TransactionCategoriesTableData(
      {required this.id,
      required this.description,
      required this.icon,
      required this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    map['icon'] = Variable<int>(icon);
    map['color'] = Variable<int>(color);
    return map;
  }

  TransactionCategoriesTableCompanion toCompanion(bool nullToAbsent) {
    return TransactionCategoriesTableCompanion(
      id: Value(id),
      description: Value(description),
      icon: Value(icon),
      color: Value(color),
    );
  }

  factory TransactionCategoriesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionCategoriesTableData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      icon: serializer.fromJson<int>(json['icon']),
      color: serializer.fromJson<int>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'icon': serializer.toJson<int>(icon),
      'color': serializer.toJson<int>(color),
    };
  }

  TransactionCategoriesTableData copyWith(
          {int? id, String? description, int? icon, int? color}) =>
      TransactionCategoriesTableData(
        id: id ?? this.id,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        color: color ?? this.color,
      );
  TransactionCategoriesTableData copyWithCompanion(
      TransactionCategoriesTableCompanion data) {
    return TransactionCategoriesTableData(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      icon: data.icon.present ? data.icon.value : this.icon,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionCategoriesTableData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, icon, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionCategoriesTableData &&
          other.id == this.id &&
          other.description == this.description &&
          other.icon == this.icon &&
          other.color == this.color);
}

class TransactionCategoriesTableCompanion
    extends UpdateCompanion<TransactionCategoriesTableData> {
  final Value<int> id;
  final Value<String> description;
  final Value<int> icon;
  final Value<int> color;
  const TransactionCategoriesTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.icon = const Value.absent(),
    this.color = const Value.absent(),
  });
  TransactionCategoriesTableCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    required int icon,
    required int color,
  })  : description = Value(description),
        icon = Value(icon),
        color = Value(color);
  static Insertable<TransactionCategoriesTableData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<int>? icon,
    Expression<int>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (icon != null) 'icon': icon,
      if (color != null) 'color': color,
    });
  }

  TransactionCategoriesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? description,
      Value<int>? icon,
      Value<int>? color}) {
    return TransactionCategoriesTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (icon.present) {
      map['icon'] = Variable<int>(icon.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionCategoriesTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES transaction_categories_table (id)'));
  static const VerificationMeta _isRecurringMeta =
      const VerificationMeta('isRecurring');
  @override
  late final GeneratedColumn<bool> isRecurring = GeneratedColumn<bool>(
      'is_recurring', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_recurring" IN (0, 1))'));
  static const VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
      'is_completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_completed" IN (0, 1))'));
  static const VerificationMeta _isIncomingMeta =
      const VerificationMeta('isIncoming');
  @override
  late final GeneratedColumn<bool> isIncoming = GeneratedColumn<bool>(
      'is_incoming', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_incoming" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _recurrenceEndDateMeta =
      const VerificationMeta('recurrenceEndDate');
  @override
  late final GeneratedColumn<DateTime> recurrenceEndDate =
      GeneratedColumn<DateTime>('recurrence_end_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        amount,
        date,
        type,
        categoryId,
        isRecurring,
        isCompleted,
        isIncoming,
        recurrenceEndDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('is_recurring')) {
      context.handle(
          _isRecurringMeta,
          isRecurring.isAcceptableOrUnknown(
              data['is_recurring']!, _isRecurringMeta));
    } else if (isInserting) {
      context.missing(_isRecurringMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    } else if (isInserting) {
      context.missing(_isCompletedMeta);
    }
    if (data.containsKey('is_incoming')) {
      context.handle(
          _isIncomingMeta,
          isIncoming.isAcceptableOrUnknown(
              data['is_incoming']!, _isIncomingMeta));
    }
    if (data.containsKey('recurrence_end_date')) {
      context.handle(
          _recurrenceEndDateMeta,
          recurrenceEndDate.isAcceptableOrUnknown(
              data['recurrence_end_date']!, _recurrenceEndDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      isRecurring: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_recurring'])!,
      isCompleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_completed'])!,
      isIncoming: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_incoming'])!,
      recurrenceEndDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}recurrence_end_date']),
    );
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }
}

class Transaction extends DataClass implements Insertable<Transaction> {
  final int id;
  final String title;
  final String description;
  final double amount;
  final DateTime date;
  final String type;
  final int categoryId;
  final bool isRecurring;
  final bool isCompleted;
  final bool isIncoming;
  final DateTime? recurrenceEndDate;
  const Transaction(
      {required this.id,
      required this.title,
      required this.description,
      required this.amount,
      required this.date,
      required this.type,
      required this.categoryId,
      required this.isRecurring,
      required this.isCompleted,
      required this.isIncoming,
      this.recurrenceEndDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['amount'] = Variable<double>(amount);
    map['date'] = Variable<DateTime>(date);
    map['type'] = Variable<String>(type);
    map['category_id'] = Variable<int>(categoryId);
    map['is_recurring'] = Variable<bool>(isRecurring);
    map['is_completed'] = Variable<bool>(isCompleted);
    map['is_incoming'] = Variable<bool>(isIncoming);
    if (!nullToAbsent || recurrenceEndDate != null) {
      map['recurrence_end_date'] = Variable<DateTime>(recurrenceEndDate);
    }
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      amount: Value(amount),
      date: Value(date),
      type: Value(type),
      categoryId: Value(categoryId),
      isRecurring: Value(isRecurring),
      isCompleted: Value(isCompleted),
      isIncoming: Value(isIncoming),
      recurrenceEndDate: recurrenceEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(recurrenceEndDate),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transaction(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      amount: serializer.fromJson<double>(json['amount']),
      date: serializer.fromJson<DateTime>(json['date']),
      type: serializer.fromJson<String>(json['type']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      isRecurring: serializer.fromJson<bool>(json['isRecurring']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      isIncoming: serializer.fromJson<bool>(json['isIncoming']),
      recurrenceEndDate:
          serializer.fromJson<DateTime?>(json['recurrenceEndDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'amount': serializer.toJson<double>(amount),
      'date': serializer.toJson<DateTime>(date),
      'type': serializer.toJson<String>(type),
      'categoryId': serializer.toJson<int>(categoryId),
      'isRecurring': serializer.toJson<bool>(isRecurring),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'isIncoming': serializer.toJson<bool>(isIncoming),
      'recurrenceEndDate': serializer.toJson<DateTime?>(recurrenceEndDate),
    };
  }

  Transaction copyWith(
          {int? id,
          String? title,
          String? description,
          double? amount,
          DateTime? date,
          String? type,
          int? categoryId,
          bool? isRecurring,
          bool? isCompleted,
          bool? isIncoming,
          Value<DateTime?> recurrenceEndDate = const Value.absent()}) =>
      Transaction(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        amount: amount ?? this.amount,
        date: date ?? this.date,
        type: type ?? this.type,
        categoryId: categoryId ?? this.categoryId,
        isRecurring: isRecurring ?? this.isRecurring,
        isCompleted: isCompleted ?? this.isCompleted,
        isIncoming: isIncoming ?? this.isIncoming,
        recurrenceEndDate: recurrenceEndDate.present
            ? recurrenceEndDate.value
            : this.recurrenceEndDate,
      );
  Transaction copyWithCompanion(TransactionsCompanion data) {
    return Transaction(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      amount: data.amount.present ? data.amount.value : this.amount,
      date: data.date.present ? data.date.value : this.date,
      type: data.type.present ? data.type.value : this.type,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      isRecurring:
          data.isRecurring.present ? data.isRecurring.value : this.isRecurring,
      isCompleted:
          data.isCompleted.present ? data.isCompleted.value : this.isCompleted,
      isIncoming:
          data.isIncoming.present ? data.isIncoming.value : this.isIncoming,
      recurrenceEndDate: data.recurrenceEndDate.present
          ? data.recurrenceEndDate.value
          : this.recurrenceEndDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('categoryId: $categoryId, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('isIncoming: $isIncoming, ')
          ..write('recurrenceEndDate: $recurrenceEndDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, amount, date, type,
      categoryId, isRecurring, isCompleted, isIncoming, recurrenceEndDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.amount == this.amount &&
          other.date == this.date &&
          other.type == this.type &&
          other.categoryId == this.categoryId &&
          other.isRecurring == this.isRecurring &&
          other.isCompleted == this.isCompleted &&
          other.isIncoming == this.isIncoming &&
          other.recurrenceEndDate == this.recurrenceEndDate);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<double> amount;
  final Value<DateTime> date;
  final Value<String> type;
  final Value<int> categoryId;
  final Value<bool> isRecurring;
  final Value<bool> isCompleted;
  final Value<bool> isIncoming;
  final Value<DateTime?> recurrenceEndDate;
  const TransactionsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.amount = const Value.absent(),
    this.date = const Value.absent(),
    this.type = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.isRecurring = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.isIncoming = const Value.absent(),
    this.recurrenceEndDate = const Value.absent(),
  });
  TransactionsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required double amount,
    required DateTime date,
    required String type,
    required int categoryId,
    required bool isRecurring,
    required bool isCompleted,
    this.isIncoming = const Value.absent(),
    this.recurrenceEndDate = const Value.absent(),
  })  : title = Value(title),
        description = Value(description),
        amount = Value(amount),
        date = Value(date),
        type = Value(type),
        categoryId = Value(categoryId),
        isRecurring = Value(isRecurring),
        isCompleted = Value(isCompleted);
  static Insertable<Transaction> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<double>? amount,
    Expression<DateTime>? date,
    Expression<String>? type,
    Expression<int>? categoryId,
    Expression<bool>? isRecurring,
    Expression<bool>? isCompleted,
    Expression<bool>? isIncoming,
    Expression<DateTime>? recurrenceEndDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (amount != null) 'amount': amount,
      if (date != null) 'date': date,
      if (type != null) 'type': type,
      if (categoryId != null) 'category_id': categoryId,
      if (isRecurring != null) 'is_recurring': isRecurring,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (isIncoming != null) 'is_incoming': isIncoming,
      if (recurrenceEndDate != null) 'recurrence_end_date': recurrenceEndDate,
    });
  }

  TransactionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<double>? amount,
      Value<DateTime>? date,
      Value<String>? type,
      Value<int>? categoryId,
      Value<bool>? isRecurring,
      Value<bool>? isCompleted,
      Value<bool>? isIncoming,
      Value<DateTime?>? recurrenceEndDate}) {
    return TransactionsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      type: type ?? this.type,
      categoryId: categoryId ?? this.categoryId,
      isRecurring: isRecurring ?? this.isRecurring,
      isCompleted: isCompleted ?? this.isCompleted,
      isIncoming: isIncoming ?? this.isIncoming,
      recurrenceEndDate: recurrenceEndDate ?? this.recurrenceEndDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (isRecurring.present) {
      map['is_recurring'] = Variable<bool>(isRecurring.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (isIncoming.present) {
      map['is_incoming'] = Variable<bool>(isIncoming.value);
    }
    if (recurrenceEndDate.present) {
      map['recurrence_end_date'] = Variable<DateTime>(recurrenceEndDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('categoryId: $categoryId, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('isIncoming: $isIncoming, ')
          ..write('recurrenceEndDate: $recurrenceEndDate')
          ..write(')'))
        .toString();
  }
}

class $AvailableColorsTableTable extends AvailableColorsTable
    with TableInfo<$AvailableColorsTableTable, AvailableColorsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AvailableColorsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hexCodeMeta =
      const VerificationMeta('hexCode');
  @override
  late final GeneratedColumn<String> hexCode = GeneratedColumn<String>(
      'hex_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, hexCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'available_colors_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AvailableColorsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hex_code')) {
      context.handle(_hexCodeMeta,
          hexCode.isAcceptableOrUnknown(data['hex_code']!, _hexCodeMeta));
    } else if (isInserting) {
      context.missing(_hexCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AvailableColorsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AvailableColorsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hexCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hex_code'])!,
    );
  }

  @override
  $AvailableColorsTableTable createAlias(String alias) {
    return $AvailableColorsTableTable(attachedDatabase, alias);
  }
}

class AvailableColorsTableData extends DataClass
    implements Insertable<AvailableColorsTableData> {
  final int id;
  final String hexCode;
  const AvailableColorsTableData({required this.id, required this.hexCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hex_code'] = Variable<String>(hexCode);
    return map;
  }

  AvailableColorsTableCompanion toCompanion(bool nullToAbsent) {
    return AvailableColorsTableCompanion(
      id: Value(id),
      hexCode: Value(hexCode),
    );
  }

  factory AvailableColorsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AvailableColorsTableData(
      id: serializer.fromJson<int>(json['id']),
      hexCode: serializer.fromJson<String>(json['hexCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hexCode': serializer.toJson<String>(hexCode),
    };
  }

  AvailableColorsTableData copyWith({int? id, String? hexCode}) =>
      AvailableColorsTableData(
        id: id ?? this.id,
        hexCode: hexCode ?? this.hexCode,
      );
  AvailableColorsTableData copyWithCompanion(
      AvailableColorsTableCompanion data) {
    return AvailableColorsTableData(
      id: data.id.present ? data.id.value : this.id,
      hexCode: data.hexCode.present ? data.hexCode.value : this.hexCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AvailableColorsTableData(')
          ..write('id: $id, ')
          ..write('hexCode: $hexCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hexCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AvailableColorsTableData &&
          other.id == this.id &&
          other.hexCode == this.hexCode);
}

class AvailableColorsTableCompanion
    extends UpdateCompanion<AvailableColorsTableData> {
  final Value<int> id;
  final Value<String> hexCode;
  const AvailableColorsTableCompanion({
    this.id = const Value.absent(),
    this.hexCode = const Value.absent(),
  });
  AvailableColorsTableCompanion.insert({
    this.id = const Value.absent(),
    required String hexCode,
  }) : hexCode = Value(hexCode);
  static Insertable<AvailableColorsTableData> custom({
    Expression<int>? id,
    Expression<String>? hexCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hexCode != null) 'hex_code': hexCode,
    });
  }

  AvailableColorsTableCompanion copyWith(
      {Value<int>? id, Value<String>? hexCode}) {
    return AvailableColorsTableCompanion(
      id: id ?? this.id,
      hexCode: hexCode ?? this.hexCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hexCode.present) {
      map['hex_code'] = Variable<String>(hexCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AvailableColorsTableCompanion(')
          ..write('id: $id, ')
          ..write('hexCode: $hexCode')
          ..write(')'))
        .toString();
  }
}

class $AvailableIconsTableTable extends AvailableIconsTable
    with TableInfo<$AvailableIconsTableTable, AvailableIconsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AvailableIconsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _iconCodeMeta =
      const VerificationMeta('iconCode');
  @override
  late final GeneratedColumn<String> iconCode = GeneratedColumn<String>(
      'icon_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, iconCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'available_icons_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AvailableIconsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('icon_code')) {
      context.handle(_iconCodeMeta,
          iconCode.isAcceptableOrUnknown(data['icon_code']!, _iconCodeMeta));
    } else if (isInserting) {
      context.missing(_iconCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AvailableIconsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AvailableIconsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      iconCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_code'])!,
    );
  }

  @override
  $AvailableIconsTableTable createAlias(String alias) {
    return $AvailableIconsTableTable(attachedDatabase, alias);
  }
}

class AvailableIconsTableData extends DataClass
    implements Insertable<AvailableIconsTableData> {
  final int id;
  final String iconCode;
  const AvailableIconsTableData({required this.id, required this.iconCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['icon_code'] = Variable<String>(iconCode);
    return map;
  }

  AvailableIconsTableCompanion toCompanion(bool nullToAbsent) {
    return AvailableIconsTableCompanion(
      id: Value(id),
      iconCode: Value(iconCode),
    );
  }

  factory AvailableIconsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AvailableIconsTableData(
      id: serializer.fromJson<int>(json['id']),
      iconCode: serializer.fromJson<String>(json['iconCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'iconCode': serializer.toJson<String>(iconCode),
    };
  }

  AvailableIconsTableData copyWith({int? id, String? iconCode}) =>
      AvailableIconsTableData(
        id: id ?? this.id,
        iconCode: iconCode ?? this.iconCode,
      );
  AvailableIconsTableData copyWithCompanion(AvailableIconsTableCompanion data) {
    return AvailableIconsTableData(
      id: data.id.present ? data.id.value : this.id,
      iconCode: data.iconCode.present ? data.iconCode.value : this.iconCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AvailableIconsTableData(')
          ..write('id: $id, ')
          ..write('iconCode: $iconCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, iconCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AvailableIconsTableData &&
          other.id == this.id &&
          other.iconCode == this.iconCode);
}

class AvailableIconsTableCompanion
    extends UpdateCompanion<AvailableIconsTableData> {
  final Value<int> id;
  final Value<String> iconCode;
  const AvailableIconsTableCompanion({
    this.id = const Value.absent(),
    this.iconCode = const Value.absent(),
  });
  AvailableIconsTableCompanion.insert({
    this.id = const Value.absent(),
    required String iconCode,
  }) : iconCode = Value(iconCode);
  static Insertable<AvailableIconsTableData> custom({
    Expression<int>? id,
    Expression<String>? iconCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (iconCode != null) 'icon_code': iconCode,
    });
  }

  AvailableIconsTableCompanion copyWith(
      {Value<int>? id, Value<String>? iconCode}) {
    return AvailableIconsTableCompanion(
      id: id ?? this.id,
      iconCode: iconCode ?? this.iconCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (iconCode.present) {
      map['icon_code'] = Variable<String>(iconCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AvailableIconsTableCompanion(')
          ..write('id: $id, ')
          ..write('iconCode: $iconCode')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTableTable extends CategoriesTable
    with TableInfo<$CategoriesTableTable, CategoriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _iconIdMeta = const VerificationMeta('iconId');
  @override
  late final GeneratedColumn<int> iconId = GeneratedColumn<int>(
      'icon_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES available_icons_table (id)'));
  static const VerificationMeta _colorIdMeta =
      const VerificationMeta('colorId');
  @override
  late final GeneratedColumn<int> colorId = GeneratedColumn<int>(
      'color_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES available_colors_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, description, iconId, colorId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CategoriesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('icon_id')) {
      context.handle(_iconIdMeta,
          iconId.isAcceptableOrUnknown(data['icon_id']!, _iconIdMeta));
    } else if (isInserting) {
      context.missing(_iconIdMeta);
    }
    if (data.containsKey('color_id')) {
      context.handle(_colorIdMeta,
          colorId.isAcceptableOrUnknown(data['color_id']!, _colorIdMeta));
    } else if (isInserting) {
      context.missing(_colorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoriesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      iconId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}icon_id'])!,
      colorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color_id'])!,
    );
  }

  @override
  $CategoriesTableTable createAlias(String alias) {
    return $CategoriesTableTable(attachedDatabase, alias);
  }
}

class CategoriesTableData extends DataClass
    implements Insertable<CategoriesTableData> {
  final int id;
  final String description;
  final int iconId;
  final int colorId;
  const CategoriesTableData(
      {required this.id,
      required this.description,
      required this.iconId,
      required this.colorId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    map['icon_id'] = Variable<int>(iconId);
    map['color_id'] = Variable<int>(colorId);
    return map;
  }

  CategoriesTableCompanion toCompanion(bool nullToAbsent) {
    return CategoriesTableCompanion(
      id: Value(id),
      description: Value(description),
      iconId: Value(iconId),
      colorId: Value(colorId),
    );
  }

  factory CategoriesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoriesTableData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      iconId: serializer.fromJson<int>(json['iconId']),
      colorId: serializer.fromJson<int>(json['colorId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'iconId': serializer.toJson<int>(iconId),
      'colorId': serializer.toJson<int>(colorId),
    };
  }

  CategoriesTableData copyWith(
          {int? id, String? description, int? iconId, int? colorId}) =>
      CategoriesTableData(
        id: id ?? this.id,
        description: description ?? this.description,
        iconId: iconId ?? this.iconId,
        colorId: colorId ?? this.colorId,
      );
  CategoriesTableData copyWithCompanion(CategoriesTableCompanion data) {
    return CategoriesTableData(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      iconId: data.iconId.present ? data.iconId.value : this.iconId,
      colorId: data.colorId.present ? data.colorId.value : this.colorId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesTableData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('iconId: $iconId, ')
          ..write('colorId: $colorId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, iconId, colorId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoriesTableData &&
          other.id == this.id &&
          other.description == this.description &&
          other.iconId == this.iconId &&
          other.colorId == this.colorId);
}

class CategoriesTableCompanion extends UpdateCompanion<CategoriesTableData> {
  final Value<int> id;
  final Value<String> description;
  final Value<int> iconId;
  final Value<int> colorId;
  const CategoriesTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.iconId = const Value.absent(),
    this.colorId = const Value.absent(),
  });
  CategoriesTableCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    required int iconId,
    required int colorId,
  })  : description = Value(description),
        iconId = Value(iconId),
        colorId = Value(colorId);
  static Insertable<CategoriesTableData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<int>? iconId,
    Expression<int>? colorId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (iconId != null) 'icon_id': iconId,
      if (colorId != null) 'color_id': colorId,
    });
  }

  CategoriesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? description,
      Value<int>? iconId,
      Value<int>? colorId}) {
    return CategoriesTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      iconId: iconId ?? this.iconId,
      colorId: colorId ?? this.colorId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (iconId.present) {
      map['icon_id'] = Variable<int>(iconId.value);
    }
    if (colorId.present) {
      map['color_id'] = Variable<int>(colorId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('iconId: $iconId, ')
          ..write('colorId: $colorId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TransactionCategoriesTableTable transactionCategoriesTable =
      $TransactionCategoriesTableTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $AvailableColorsTableTable availableColorsTable =
      $AvailableColorsTableTable(this);
  late final $AvailableIconsTableTable availableIconsTable =
      $AvailableIconsTableTable(this);
  late final $CategoriesTableTable categoriesTable =
      $CategoriesTableTable(this);
  late final TransactionDao transactionDao =
      TransactionDao(this as AppDatabase);
  late final TransactionCategoryDao transactionCategoryDao =
      TransactionCategoryDao(this as AppDatabase);
  late final AvailableColorDao availableColorDao =
      AvailableColorDao(this as AppDatabase);
  late final AvailableIconDao availableIconDao =
      AvailableIconDao(this as AppDatabase);
  late final CategoryDao categoryDao = CategoryDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        transactionCategoriesTable,
        transactions,
        availableColorsTable,
        availableIconsTable,
        categoriesTable
      ];
}

typedef $$TransactionCategoriesTableTableCreateCompanionBuilder
    = TransactionCategoriesTableCompanion Function({
  Value<int> id,
  required String description,
  required int icon,
  required int color,
});
typedef $$TransactionCategoriesTableTableUpdateCompanionBuilder
    = TransactionCategoriesTableCompanion Function({
  Value<int> id,
  Value<String> description,
  Value<int> icon,
  Value<int> color,
});

final class $$TransactionCategoriesTableTableReferences extends BaseReferences<
    _$AppDatabase,
    $TransactionCategoriesTableTable,
    TransactionCategoriesTableData> {
  $$TransactionCategoriesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.transactions,
          aliasName: $_aliasNameGenerator(
              db.transactionCategoriesTable.id, db.transactions.categoryId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TransactionCategoriesTableTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionCategoriesTableTable> {
  $$TransactionCategoriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get icon => $composableBuilder(
      column: $table.icon, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  Expression<bool> transactionsRefs(
      Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionCategoriesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionCategoriesTableTable> {
  $$TransactionCategoriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get icon => $composableBuilder(
      column: $table.icon, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));
}

class $$TransactionCategoriesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionCategoriesTableTable> {
  $$TransactionCategoriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  Expression<T> transactionsRefs<T extends Object>(
      Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionCategoriesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TransactionCategoriesTableTable,
    TransactionCategoriesTableData,
    $$TransactionCategoriesTableTableFilterComposer,
    $$TransactionCategoriesTableTableOrderingComposer,
    $$TransactionCategoriesTableTableAnnotationComposer,
    $$TransactionCategoriesTableTableCreateCompanionBuilder,
    $$TransactionCategoriesTableTableUpdateCompanionBuilder,
    (
      TransactionCategoriesTableData,
      $$TransactionCategoriesTableTableReferences
    ),
    TransactionCategoriesTableData,
    PrefetchHooks Function({bool transactionsRefs})> {
  $$TransactionCategoriesTableTableTableManager(
      _$AppDatabase db, $TransactionCategoriesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionCategoriesTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionCategoriesTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionCategoriesTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<int> icon = const Value.absent(),
            Value<int> color = const Value.absent(),
          }) =>
              TransactionCategoriesTableCompanion(
            id: id,
            description: description,
            icon: icon,
            color: color,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String description,
            required int icon,
            required int color,
          }) =>
              TransactionCategoriesTableCompanion.insert(
            id: id,
            description: description,
            icon: icon,
            color: color,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionCategoriesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await $_getPrefetchedData<TransactionCategoriesTableData,
                            $TransactionCategoriesTableTable, Transaction>(
                        currentTable: table,
                        referencedTable:
                            $$TransactionCategoriesTableTableReferences
                                ._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionCategoriesTableTableReferences(
                                    db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.categoryId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TransactionCategoriesTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $TransactionCategoriesTableTable,
        TransactionCategoriesTableData,
        $$TransactionCategoriesTableTableFilterComposer,
        $$TransactionCategoriesTableTableOrderingComposer,
        $$TransactionCategoriesTableTableAnnotationComposer,
        $$TransactionCategoriesTableTableCreateCompanionBuilder,
        $$TransactionCategoriesTableTableUpdateCompanionBuilder,
        (
          TransactionCategoriesTableData,
          $$TransactionCategoriesTableTableReferences
        ),
        TransactionCategoriesTableData,
        PrefetchHooks Function({bool transactionsRefs})>;
typedef $$TransactionsTableCreateCompanionBuilder = TransactionsCompanion
    Function({
  Value<int> id,
  required String title,
  required String description,
  required double amount,
  required DateTime date,
  required String type,
  required int categoryId,
  required bool isRecurring,
  required bool isCompleted,
  Value<bool> isIncoming,
  Value<DateTime?> recurrenceEndDate,
});
typedef $$TransactionsTableUpdateCompanionBuilder = TransactionsCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<String> description,
  Value<double> amount,
  Value<DateTime> date,
  Value<String> type,
  Value<int> categoryId,
  Value<bool> isRecurring,
  Value<bool> isCompleted,
  Value<bool> isIncoming,
  Value<DateTime?> recurrenceEndDate,
});

final class $$TransactionsTableReferences
    extends BaseReferences<_$AppDatabase, $TransactionsTable, Transaction> {
  $$TransactionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TransactionCategoriesTableTable _categoryIdTable(_$AppDatabase db) =>
      db.transactionCategoriesTable.createAlias($_aliasNameGenerator(
          db.transactions.categoryId, db.transactionCategoriesTable.id));

  $$TransactionCategoriesTableTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$TransactionCategoriesTableTableTableManager(
            $_db, $_db.transactionCategoriesTable)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TransactionsTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isIncoming => $composableBuilder(
      column: $table.isIncoming, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get recurrenceEndDate => $composableBuilder(
      column: $table.recurrenceEndDate,
      builder: (column) => ColumnFilters(column));

  $$TransactionCategoriesTableTableFilterComposer get categoryId {
    final $$TransactionCategoriesTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.categoryId,
            referencedTable: $db.transactionCategoriesTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$TransactionCategoriesTableTableFilterComposer(
                  $db: $db,
                  $table: $db.transactionCategoriesTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$TransactionsTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isIncoming => $composableBuilder(
      column: $table.isIncoming, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get recurrenceEndDate => $composableBuilder(
      column: $table.recurrenceEndDate,
      builder: (column) => ColumnOrderings(column));

  $$TransactionCategoriesTableTableOrderingComposer get categoryId {
    final $$TransactionCategoriesTableTableOrderingComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.categoryId,
            referencedTable: $db.transactionCategoriesTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$TransactionCategoriesTableTableOrderingComposer(
                  $db: $db,
                  $table: $db.transactionCategoriesTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$TransactionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => column);

  GeneratedColumn<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => column);

  GeneratedColumn<bool> get isIncoming => $composableBuilder(
      column: $table.isIncoming, builder: (column) => column);

  GeneratedColumn<DateTime> get recurrenceEndDate => $composableBuilder(
      column: $table.recurrenceEndDate, builder: (column) => column);

  $$TransactionCategoriesTableTableAnnotationComposer get categoryId {
    final $$TransactionCategoriesTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.categoryId,
            referencedTable: $db.transactionCategoriesTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$TransactionCategoriesTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.transactionCategoriesTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$TransactionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TransactionsTable,
    Transaction,
    $$TransactionsTableFilterComposer,
    $$TransactionsTableOrderingComposer,
    $$TransactionsTableAnnotationComposer,
    $$TransactionsTableCreateCompanionBuilder,
    $$TransactionsTableUpdateCompanionBuilder,
    (Transaction, $$TransactionsTableReferences),
    Transaction,
    PrefetchHooks Function({bool categoryId})> {
  $$TransactionsTableTableManager(_$AppDatabase db, $TransactionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
            Value<bool> isRecurring = const Value.absent(),
            Value<bool> isCompleted = const Value.absent(),
            Value<bool> isIncoming = const Value.absent(),
            Value<DateTime?> recurrenceEndDate = const Value.absent(),
          }) =>
              TransactionsCompanion(
            id: id,
            title: title,
            description: description,
            amount: amount,
            date: date,
            type: type,
            categoryId: categoryId,
            isRecurring: isRecurring,
            isCompleted: isCompleted,
            isIncoming: isIncoming,
            recurrenceEndDate: recurrenceEndDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String description,
            required double amount,
            required DateTime date,
            required String type,
            required int categoryId,
            required bool isRecurring,
            required bool isCompleted,
            Value<bool> isIncoming = const Value.absent(),
            Value<DateTime?> recurrenceEndDate = const Value.absent(),
          }) =>
              TransactionsCompanion.insert(
            id: id,
            title: title,
            description: description,
            amount: amount,
            date: date,
            type: type,
            categoryId: categoryId,
            isRecurring: isRecurring,
            isCompleted: isCompleted,
            isIncoming: isIncoming,
            recurrenceEndDate: recurrenceEndDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (categoryId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.categoryId,
                    referencedTable:
                        $$TransactionsTableReferences._categoryIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._categoryIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TransactionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TransactionsTable,
    Transaction,
    $$TransactionsTableFilterComposer,
    $$TransactionsTableOrderingComposer,
    $$TransactionsTableAnnotationComposer,
    $$TransactionsTableCreateCompanionBuilder,
    $$TransactionsTableUpdateCompanionBuilder,
    (Transaction, $$TransactionsTableReferences),
    Transaction,
    PrefetchHooks Function({bool categoryId})>;
typedef $$AvailableColorsTableTableCreateCompanionBuilder
    = AvailableColorsTableCompanion Function({
  Value<int> id,
  required String hexCode,
});
typedef $$AvailableColorsTableTableUpdateCompanionBuilder
    = AvailableColorsTableCompanion Function({
  Value<int> id,
  Value<String> hexCode,
});

final class $$AvailableColorsTableTableReferences extends BaseReferences<
    _$AppDatabase, $AvailableColorsTableTable, AvailableColorsTableData> {
  $$AvailableColorsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CategoriesTableTable, List<CategoriesTableData>>
      _categoriesTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.categoriesTable,
              aliasName: $_aliasNameGenerator(
                  db.availableColorsTable.id, db.categoriesTable.colorId));

  $$CategoriesTableTableProcessedTableManager get categoriesTableRefs {
    final manager =
        $$CategoriesTableTableTableManager($_db, $_db.categoriesTable)
            .filter((f) => f.colorId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_categoriesTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AvailableColorsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AvailableColorsTableTable> {
  $$AvailableColorsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hexCode => $composableBuilder(
      column: $table.hexCode, builder: (column) => ColumnFilters(column));

  Expression<bool> categoriesTableRefs(
      Expression<bool> Function($$CategoriesTableTableFilterComposer f) f) {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categoriesTable,
        getReferencedColumn: (t) => t.colorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableTableFilterComposer(
              $db: $db,
              $table: $db.categoriesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AvailableColorsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AvailableColorsTableTable> {
  $$AvailableColorsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hexCode => $composableBuilder(
      column: $table.hexCode, builder: (column) => ColumnOrderings(column));
}

class $$AvailableColorsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AvailableColorsTableTable> {
  $$AvailableColorsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get hexCode =>
      $composableBuilder(column: $table.hexCode, builder: (column) => column);

  Expression<T> categoriesTableRefs<T extends Object>(
      Expression<T> Function($$CategoriesTableTableAnnotationComposer a) f) {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categoriesTable,
        getReferencedColumn: (t) => t.colorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableTableAnnotationComposer(
              $db: $db,
              $table: $db.categoriesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AvailableColorsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AvailableColorsTableTable,
    AvailableColorsTableData,
    $$AvailableColorsTableTableFilterComposer,
    $$AvailableColorsTableTableOrderingComposer,
    $$AvailableColorsTableTableAnnotationComposer,
    $$AvailableColorsTableTableCreateCompanionBuilder,
    $$AvailableColorsTableTableUpdateCompanionBuilder,
    (AvailableColorsTableData, $$AvailableColorsTableTableReferences),
    AvailableColorsTableData,
    PrefetchHooks Function({bool categoriesTableRefs})> {
  $$AvailableColorsTableTableTableManager(
      _$AppDatabase db, $AvailableColorsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AvailableColorsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AvailableColorsTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AvailableColorsTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> hexCode = const Value.absent(),
          }) =>
              AvailableColorsTableCompanion(
            id: id,
            hexCode: hexCode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String hexCode,
          }) =>
              AvailableColorsTableCompanion.insert(
            id: id,
            hexCode: hexCode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AvailableColorsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({categoriesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (categoriesTableRefs) db.categoriesTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (categoriesTableRefs)
                    await $_getPrefetchedData<AvailableColorsTableData,
                            $AvailableColorsTableTable, CategoriesTableData>(
                        currentTable: table,
                        referencedTable: $$AvailableColorsTableTableReferences
                            ._categoriesTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AvailableColorsTableTableReferences(db, table, p0)
                                .categoriesTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.colorId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AvailableColorsTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $AvailableColorsTableTable,
        AvailableColorsTableData,
        $$AvailableColorsTableTableFilterComposer,
        $$AvailableColorsTableTableOrderingComposer,
        $$AvailableColorsTableTableAnnotationComposer,
        $$AvailableColorsTableTableCreateCompanionBuilder,
        $$AvailableColorsTableTableUpdateCompanionBuilder,
        (AvailableColorsTableData, $$AvailableColorsTableTableReferences),
        AvailableColorsTableData,
        PrefetchHooks Function({bool categoriesTableRefs})>;
typedef $$AvailableIconsTableTableCreateCompanionBuilder
    = AvailableIconsTableCompanion Function({
  Value<int> id,
  required String iconCode,
});
typedef $$AvailableIconsTableTableUpdateCompanionBuilder
    = AvailableIconsTableCompanion Function({
  Value<int> id,
  Value<String> iconCode,
});

final class $$AvailableIconsTableTableReferences extends BaseReferences<
    _$AppDatabase, $AvailableIconsTableTable, AvailableIconsTableData> {
  $$AvailableIconsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CategoriesTableTable, List<CategoriesTableData>>
      _categoriesTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.categoriesTable,
              aliasName: $_aliasNameGenerator(
                  db.availableIconsTable.id, db.categoriesTable.iconId));

  $$CategoriesTableTableProcessedTableManager get categoriesTableRefs {
    final manager =
        $$CategoriesTableTableTableManager($_db, $_db.categoriesTable)
            .filter((f) => f.iconId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_categoriesTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AvailableIconsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AvailableIconsTableTable> {
  $$AvailableIconsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get iconCode => $composableBuilder(
      column: $table.iconCode, builder: (column) => ColumnFilters(column));

  Expression<bool> categoriesTableRefs(
      Expression<bool> Function($$CategoriesTableTableFilterComposer f) f) {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categoriesTable,
        getReferencedColumn: (t) => t.iconId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableTableFilterComposer(
              $db: $db,
              $table: $db.categoriesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AvailableIconsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AvailableIconsTableTable> {
  $$AvailableIconsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get iconCode => $composableBuilder(
      column: $table.iconCode, builder: (column) => ColumnOrderings(column));
}

class $$AvailableIconsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AvailableIconsTableTable> {
  $$AvailableIconsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get iconCode =>
      $composableBuilder(column: $table.iconCode, builder: (column) => column);

  Expression<T> categoriesTableRefs<T extends Object>(
      Expression<T> Function($$CategoriesTableTableAnnotationComposer a) f) {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categoriesTable,
        getReferencedColumn: (t) => t.iconId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableTableAnnotationComposer(
              $db: $db,
              $table: $db.categoriesTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AvailableIconsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AvailableIconsTableTable,
    AvailableIconsTableData,
    $$AvailableIconsTableTableFilterComposer,
    $$AvailableIconsTableTableOrderingComposer,
    $$AvailableIconsTableTableAnnotationComposer,
    $$AvailableIconsTableTableCreateCompanionBuilder,
    $$AvailableIconsTableTableUpdateCompanionBuilder,
    (AvailableIconsTableData, $$AvailableIconsTableTableReferences),
    AvailableIconsTableData,
    PrefetchHooks Function({bool categoriesTableRefs})> {
  $$AvailableIconsTableTableTableManager(
      _$AppDatabase db, $AvailableIconsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AvailableIconsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AvailableIconsTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AvailableIconsTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> iconCode = const Value.absent(),
          }) =>
              AvailableIconsTableCompanion(
            id: id,
            iconCode: iconCode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String iconCode,
          }) =>
              AvailableIconsTableCompanion.insert(
            id: id,
            iconCode: iconCode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AvailableIconsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({categoriesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (categoriesTableRefs) db.categoriesTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (categoriesTableRefs)
                    await $_getPrefetchedData<AvailableIconsTableData,
                            $AvailableIconsTableTable, CategoriesTableData>(
                        currentTable: table,
                        referencedTable: $$AvailableIconsTableTableReferences
                            ._categoriesTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AvailableIconsTableTableReferences(db, table, p0)
                                .categoriesTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.iconId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AvailableIconsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AvailableIconsTableTable,
    AvailableIconsTableData,
    $$AvailableIconsTableTableFilterComposer,
    $$AvailableIconsTableTableOrderingComposer,
    $$AvailableIconsTableTableAnnotationComposer,
    $$AvailableIconsTableTableCreateCompanionBuilder,
    $$AvailableIconsTableTableUpdateCompanionBuilder,
    (AvailableIconsTableData, $$AvailableIconsTableTableReferences),
    AvailableIconsTableData,
    PrefetchHooks Function({bool categoriesTableRefs})>;
typedef $$CategoriesTableTableCreateCompanionBuilder = CategoriesTableCompanion
    Function({
  Value<int> id,
  required String description,
  required int iconId,
  required int colorId,
});
typedef $$CategoriesTableTableUpdateCompanionBuilder = CategoriesTableCompanion
    Function({
  Value<int> id,
  Value<String> description,
  Value<int> iconId,
  Value<int> colorId,
});

final class $$CategoriesTableTableReferences extends BaseReferences<
    _$AppDatabase, $CategoriesTableTable, CategoriesTableData> {
  $$CategoriesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $AvailableIconsTableTable _iconIdTable(_$AppDatabase db) =>
      db.availableIconsTable.createAlias($_aliasNameGenerator(
          db.categoriesTable.iconId, db.availableIconsTable.id));

  $$AvailableIconsTableTableProcessedTableManager get iconId {
    final $_column = $_itemColumn<int>('icon_id')!;

    final manager =
        $$AvailableIconsTableTableTableManager($_db, $_db.availableIconsTable)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_iconIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AvailableColorsTableTable _colorIdTable(_$AppDatabase db) =>
      db.availableColorsTable.createAlias($_aliasNameGenerator(
          db.categoriesTable.colorId, db.availableColorsTable.id));

  $$AvailableColorsTableTableProcessedTableManager get colorId {
    final $_column = $_itemColumn<int>('color_id')!;

    final manager =
        $$AvailableColorsTableTableTableManager($_db, $_db.availableColorsTable)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_colorIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CategoriesTableTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  $$AvailableIconsTableTableFilterComposer get iconId {
    final $$AvailableIconsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.iconId,
        referencedTable: $db.availableIconsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AvailableIconsTableTableFilterComposer(
              $db: $db,
              $table: $db.availableIconsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AvailableColorsTableTableFilterComposer get colorId {
    final $$AvailableColorsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.colorId,
        referencedTable: $db.availableColorsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AvailableColorsTableTableFilterComposer(
              $db: $db,
              $table: $db.availableColorsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CategoriesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  $$AvailableIconsTableTableOrderingComposer get iconId {
    final $$AvailableIconsTableTableOrderingComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.iconId,
            referencedTable: $db.availableIconsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$AvailableIconsTableTableOrderingComposer(
                  $db: $db,
                  $table: $db.availableIconsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  $$AvailableColorsTableTableOrderingComposer get colorId {
    final $$AvailableColorsTableTableOrderingComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.colorId,
            referencedTable: $db.availableColorsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$AvailableColorsTableTableOrderingComposer(
                  $db: $db,
                  $table: $db.availableColorsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$CategoriesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  $$AvailableIconsTableTableAnnotationComposer get iconId {
    final $$AvailableIconsTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.iconId,
            referencedTable: $db.availableIconsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$AvailableIconsTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.availableIconsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  $$AvailableColorsTableTableAnnotationComposer get colorId {
    final $$AvailableColorsTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.colorId,
            referencedTable: $db.availableColorsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$AvailableColorsTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.availableColorsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$CategoriesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTableTable,
    CategoriesTableData,
    $$CategoriesTableTableFilterComposer,
    $$CategoriesTableTableOrderingComposer,
    $$CategoriesTableTableAnnotationComposer,
    $$CategoriesTableTableCreateCompanionBuilder,
    $$CategoriesTableTableUpdateCompanionBuilder,
    (CategoriesTableData, $$CategoriesTableTableReferences),
    CategoriesTableData,
    PrefetchHooks Function({bool iconId, bool colorId})> {
  $$CategoriesTableTableTableManager(
      _$AppDatabase db, $CategoriesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<int> iconId = const Value.absent(),
            Value<int> colorId = const Value.absent(),
          }) =>
              CategoriesTableCompanion(
            id: id,
            description: description,
            iconId: iconId,
            colorId: colorId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String description,
            required int iconId,
            required int colorId,
          }) =>
              CategoriesTableCompanion.insert(
            id: id,
            description: description,
            iconId: iconId,
            colorId: colorId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CategoriesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({iconId = false, colorId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (iconId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.iconId,
                    referencedTable:
                        $$CategoriesTableTableReferences._iconIdTable(db),
                    referencedColumn:
                        $$CategoriesTableTableReferences._iconIdTable(db).id,
                  ) as T;
                }
                if (colorId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.colorId,
                    referencedTable:
                        $$CategoriesTableTableReferences._colorIdTable(db),
                    referencedColumn:
                        $$CategoriesTableTableReferences._colorIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CategoriesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTableTable,
    CategoriesTableData,
    $$CategoriesTableTableFilterComposer,
    $$CategoriesTableTableOrderingComposer,
    $$CategoriesTableTableAnnotationComposer,
    $$CategoriesTableTableCreateCompanionBuilder,
    $$CategoriesTableTableUpdateCompanionBuilder,
    (CategoriesTableData, $$CategoriesTableTableReferences),
    CategoriesTableData,
    PrefetchHooks Function({bool iconId, bool colorId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TransactionCategoriesTableTableTableManager
      get transactionCategoriesTable =>
          $$TransactionCategoriesTableTableTableManager(
              _db, _db.transactionCategoriesTable);
  $$TransactionsTableTableManager get transactions =>
      $$TransactionsTableTableManager(_db, _db.transactions);
  $$AvailableColorsTableTableTableManager get availableColorsTable =>
      $$AvailableColorsTableTableTableManager(_db, _db.availableColorsTable);
  $$AvailableIconsTableTableTableManager get availableIconsTable =>
      $$AvailableIconsTableTableTableManager(_db, _db.availableIconsTable);
  $$CategoriesTableTableTableManager get categoriesTable =>
      $$CategoriesTableTableTableManager(_db, _db.categoriesTable);
}
