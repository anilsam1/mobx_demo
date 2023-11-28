// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_model_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyModelStore on _MyModelStore, Store {
  late final _$modelListAtom =
      Atom(name: '_MyModelStore.modelList', context: context);

  @override
  ObservableList<MyModel> get modelList {
    _$modelListAtom.reportRead();
    return super.modelList;
  }

  @override
  set modelList(ObservableList<MyModel> value) {
    _$modelListAtom.reportWrite(value, super.modelList, () {
      super.modelList = value;
    });
  }

  late final _$_MyModelStoreActionController =
      ActionController(name: '_MyModelStore', context: context);

  @override
  void addModel(MyModel model) {
    final _$actionInfo = _$_MyModelStoreActionController.startAction(
        name: '_MyModelStore.addModel');
    try {
      return super.addModel(model);
    } finally {
      _$_MyModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeModel(MyModel model) {
    final _$actionInfo = _$_MyModelStoreActionController.startAction(
        name: '_MyModelStore.removeModel');
    try {
      return super.removeModel(model);
    } finally {
      _$_MyModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
modelList: ${modelList}
    ''';
  }
}
