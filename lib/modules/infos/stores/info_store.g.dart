// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InfoStore on InfoStoreBase, Store {
  late final _$infosAtom = Atom(name: 'InfoStoreBase.infos', context: context);

  @override
  List<InfoModel> get infos {
    _$infosAtom.reportRead();
    return super.infos;
  }

  @override
  set infos(List<InfoModel> value) {
    _$infosAtom.reportWrite(value, super.infos, () {
      super.infos = value;
    });
  }

  late final _$InfoStoreBaseActionController = ActionController(
    name: 'InfoStoreBase',
    context: context,
  );

  @override
  void addInfo(String infoDescription) {
    final _$actionInfo = _$InfoStoreBaseActionController.startAction(
      name: 'InfoStoreBase.addInfo',
    );
    try {
      return super.addInfo(infoDescription);
    } finally {
      _$InfoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeInfo(InfoModel info) {
    final _$actionInfo = _$InfoStoreBaseActionController.startAction(
      name: 'InfoStoreBase.removeInfo',
    );
    try {
      return super.removeInfo(info);
    } finally {
      _$InfoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editInfo(int id, String newDescription) {
    final _$actionInfo = _$InfoStoreBaseActionController.startAction(
      name: 'InfoStoreBase.editInfo',
    );
    try {
      return super.editInfo(id, newDescription);
    } finally {
      _$InfoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
infos: ${infos}
    ''';
  }
}
