// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$lojaListAtom = Atom(name: '_HomeControllerBase.lojaList');

  @override
  ObservableStream<List<Loja>> get lojaList {
    _$lojaListAtom.reportRead();
    return super.lojaList;
  }

  @override
  set lojaList(ObservableStream<List<Loja>> value) {
    _$lojaListAtom.reportWrite(value, super.lojaList, () {
      super.lojaList = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getList');
    try {
      return super.getList();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lojaList: ${lojaList}
    ''';
  }
}
