// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<StoresRepository>(), i<ProductRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<ObservableStream<List<StoreAll>>> _$listaStoresAllComputed;

  @override
  ObservableStream<List<StoreAll>> get listaStoresAll =>
      (_$listaStoresAllComputed ??= Computed<ObservableStream<List<StoreAll>>>(
              () => super.listaStoresAll,
              name: '_HomeControllerBase.listaStoresAll'))
          .value;

  final _$snapshotGetAtom = Atom(name: '_HomeControllerBase.snapshotGet');

  @override
  Snapshot<List<StoreAll>> get snapshotGet {
    _$snapshotGetAtom.reportRead();
    return super.snapshotGet;
  }

  @override
  set snapshotGet(Snapshot<List<StoreAll>> value) {
    _$snapshotGetAtom.reportWrite(value, super.snapshotGet, () {
      super.snapshotGet = value;
    });
  }

  final _$listaProductStoreAtom =
      Atom(name: '_HomeControllerBase.listaProductStore');

  @override
  List<ProductStoreModel> get listaProductStore {
    _$listaProductStoreAtom.reportRead();
    return super.listaProductStore;
  }

  @override
  set listaProductStore(List<ProductStoreModel> value) {
    _$listaProductStoreAtom.reportWrite(value, super.listaProductStore, () {
      super.listaProductStore = value;
    });
  }

  final _$idStoreMAtom = Atom(name: '_HomeControllerBase.idStoreM');

  @override
  String get idStoreM {
    _$idStoreMAtom.reportRead();
    return super.idStoreM;
  }

  @override
  set idStoreM(String value) {
    _$idStoreMAtom.reportWrite(value, super.idStoreM, () {
      super.idStoreM = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setIdStore(String _idStore) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setIdStore');
    try {
      return super.setIdStore(_idStore);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
snapshotGet: ${snapshotGet},
listaProductStore: ${listaProductStore},
idStoreM: ${idStoreM},
listaStoresAll: ${listaStoresAll}
    ''';
  }
}
