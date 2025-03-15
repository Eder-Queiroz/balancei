// dart format width=80
// GENERATED CODE, DO NOT EDIT BY HAND.
// ignore_for_file: type=lint
import 'package:drift/drift.dart';

class TransactionCategoriesTable extends Table
    with TableInfo<TransactionCategoriesTable, TransactionCategoriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  TransactionCategoriesTable(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
      'icon', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
          .read(DriftSqlType.string, data['${effectivePrefix}icon'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
    );
  }

  @override
  TransactionCategoriesTable createAlias(String alias) {
    return TransactionCategoriesTable(attachedDatabase, alias);
  }
}

class TransactionCategoriesTableData extends DataClass
    implements Insertable<TransactionCategoriesTableData> {
  final int id;
  final String description;
  final String icon;
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
    map['icon'] = Variable<String>(icon);
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
      icon: serializer.fromJson<String>(json['icon']),
      color: serializer.fromJson<int>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'icon': serializer.toJson<String>(icon),
      'color': serializer.toJson<int>(color),
    };
  }

  TransactionCategoriesTableData copyWith(
          {int? id, String? description, String? icon, int? color}) =>
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
  final Value<String> icon;
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
    required String icon,
    required int color,
  })  : description = Value(description),
        icon = Value(icon),
        color = Value(color);
  static Insertable<TransactionCategoriesTableData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<String>? icon,
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
      Value<String>? icon,
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
      map['icon'] = Variable<String>(icon.value);
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

class Transactions extends Table
    with TableInfo<Transactions, TransactionsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Transactions(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES transaction_categories_table (id)'));
  late final GeneratedColumn<bool> isRecurring = GeneratedColumn<bool>(
      'is_recurring', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_recurring" IN (0, 1))'));
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
      'is_completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_completed" IN (0, 1))'));
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
        recurrenceEndDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionsData(
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
      recurrenceEndDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}recurrence_end_date']),
    );
  }

  @override
  Transactions createAlias(String alias) {
    return Transactions(attachedDatabase, alias);
  }
}

class TransactionsData extends DataClass
    implements Insertable<TransactionsData> {
  final int id;
  final String title;
  final String description;
  final double amount;
  final DateTime date;
  final String type;
  final int categoryId;
  final bool isRecurring;
  final bool isCompleted;
  final DateTime? recurrenceEndDate;
  const TransactionsData(
      {required this.id,
      required this.title,
      required this.description,
      required this.amount,
      required this.date,
      required this.type,
      required this.categoryId,
      required this.isRecurring,
      required this.isCompleted,
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
      recurrenceEndDate: recurrenceEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(recurrenceEndDate),
    );
  }

  factory TransactionsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionsData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      amount: serializer.fromJson<double>(json['amount']),
      date: serializer.fromJson<DateTime>(json['date']),
      type: serializer.fromJson<String>(json['type']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      isRecurring: serializer.fromJson<bool>(json['isRecurring']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
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
      'recurrenceEndDate': serializer.toJson<DateTime?>(recurrenceEndDate),
    };
  }

  TransactionsData copyWith(
          {int? id,
          String? title,
          String? description,
          double? amount,
          DateTime? date,
          String? type,
          int? categoryId,
          bool? isRecurring,
          bool? isCompleted,
          Value<DateTime?> recurrenceEndDate = const Value.absent()}) =>
      TransactionsData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        amount: amount ?? this.amount,
        date: date ?? this.date,
        type: type ?? this.type,
        categoryId: categoryId ?? this.categoryId,
        isRecurring: isRecurring ?? this.isRecurring,
        isCompleted: isCompleted ?? this.isCompleted,
        recurrenceEndDate: recurrenceEndDate.present
            ? recurrenceEndDate.value
            : this.recurrenceEndDate,
      );
  TransactionsData copyWithCompanion(TransactionsCompanion data) {
    return TransactionsData(
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
      recurrenceEndDate: data.recurrenceEndDate.present
          ? data.recurrenceEndDate.value
          : this.recurrenceEndDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('categoryId: $categoryId, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('recurrenceEndDate: $recurrenceEndDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, amount, date, type,
      categoryId, isRecurring, isCompleted, recurrenceEndDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionsData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.amount == this.amount &&
          other.date == this.date &&
          other.type == this.type &&
          other.categoryId == this.categoryId &&
          other.isRecurring == this.isRecurring &&
          other.isCompleted == this.isCompleted &&
          other.recurrenceEndDate == this.recurrenceEndDate);
}

class TransactionsCompanion extends UpdateCompanion<TransactionsData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<double> amount;
  final Value<DateTime> date;
  final Value<String> type;
  final Value<int> categoryId;
  final Value<bool> isRecurring;
  final Value<bool> isCompleted;
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
    this.recurrenceEndDate = const Value.absent(),
  })  : title = Value(title),
        description = Value(description),
        amount = Value(amount),
        date = Value(date),
        type = Value(type),
        categoryId = Value(categoryId),
        isRecurring = Value(isRecurring),
        isCompleted = Value(isCompleted);
  static Insertable<TransactionsData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<double>? amount,
    Expression<DateTime>? date,
    Expression<String>? type,
    Expression<int>? categoryId,
    Expression<bool>? isRecurring,
    Expression<bool>? isCompleted,
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
          ..write('recurrenceEndDate: $recurrenceEndDate')
          ..write(')'))
        .toString();
  }
}

class DatabaseAtV1 extends GeneratedDatabase {
  DatabaseAtV1(QueryExecutor e) : super(e);
  late final TransactionCategoriesTable transactionCategoriesTable =
      TransactionCategoriesTable(this);
  late final Transactions transactions = Transactions(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [transactionCategoriesTable, transactions];
  @override
  int get schemaVersion => 1;
}
