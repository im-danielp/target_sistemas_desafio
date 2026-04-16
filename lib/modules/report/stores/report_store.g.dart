// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReportStore on ReportStoreBase, Store {
  Computed<int>? _$numbersCountComputed;

  @override
  int get numbersCount => (_$numbersCountComputed ??= Computed<int>(
    () => super.numbersCount,
    name: 'ReportStoreBase.numbersCount',
  )).value;
  Computed<int>? _$lettersCountComputed;

  @override
  int get lettersCount => (_$lettersCountComputed ??= Computed<int>(
    () => super.lettersCount,
    name: 'ReportStoreBase.lettersCount',
  )).value;

  @override
  String toString() {
    return '''
numbersCount: ${numbersCount},
lettersCount: ${lettersCount}
    ''';
  }
}
