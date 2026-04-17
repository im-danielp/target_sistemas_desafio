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

  late final _$linesCountAtom = Atom(
    name: 'ReportStoreBase.linesCount',
    context: context,
  );

  @override
  int get linesCount {
    _$linesCountAtom.reportRead();
    return super.linesCount;
  }

  @override
  set linesCount(int value) {
    _$linesCountAtom.reportWrite(value, super.linesCount, () {
      super.linesCount = value;
    });
  }

  late final _$editsCountAtom = Atom(
    name: 'ReportStoreBase.editsCount',
    context: context,
  );

  @override
  int get editsCount {
    _$editsCountAtom.reportRead();
    return super.editsCount;
  }

  @override
  set editsCount(int value) {
    _$editsCountAtom.reportWrite(value, super.editsCount, () {
      super.editsCount = value;
    });
  }

  late final _$ReportStoreBaseActionController = ActionController(
    name: 'ReportStoreBase',
    context: context,
  );

  @override
  void incrementEditsCount() {
    final _$actionInfo = _$ReportStoreBaseActionController.startAction(
      name: 'ReportStoreBase.incrementEditsCount',
    );
    try {
      return super.incrementEditsCount();
    } finally {
      _$ReportStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementLinesCount(String newDescription) {
    final _$actionInfo = _$ReportStoreBaseActionController.startAction(
      name: 'ReportStoreBase.incrementLinesCount',
    );
    try {
      return super.incrementLinesCount(newDescription);
    } finally {
      _$ReportStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementLinesCount(String oldDescription) {
    final _$actionInfo = _$ReportStoreBaseActionController.startAction(
      name: 'ReportStoreBase.decrementLinesCount',
    );
    try {
      return super.decrementLinesCount(oldDescription);
    } finally {
      _$ReportStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
linesCount: ${linesCount},
editsCount: ${editsCount},
numbersCount: ${numbersCount},
lettersCount: ${lettersCount}
    ''';
  }
}
