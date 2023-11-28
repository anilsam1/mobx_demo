// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on CommonStore, Store {
  Computed<ObservableList<ToDoModel>>? _$todoCompleteListComputed;

  @override
  ObservableList<ToDoModel> get todoCompleteList =>
      (_$todoCompleteListComputed ??= Computed<ObservableList<ToDoModel>>(
              () => super.todoCompleteList,
              name: 'CommonStore.todoCompleteList'))
          .value;
  Computed<int>? _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: 'CommonStore.total'))
      .value;

  late final _$connectivityStreamAtom =
      Atom(name: 'CommonStore.connectivityStream', context: context);

  @override
  ObservableStream<ConnectivityResult> get connectivityStream {
    _$connectivityStreamAtom.reportRead();
    return super.connectivityStream;
  }

  @override
  set connectivityStream(ObservableStream<ConnectivityResult> value) {
    _$connectivityStreamAtom.reportWrite(value, super.connectivityStream, () {
      super.connectivityStream = value;
    });
  }

  late final _$_valueAtom = Atom(name: 'CommonStore._value', context: context);

  int get value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  int get _value => value;

  @override
  set _value(int value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  late final _$leftAtom = Atom(name: 'CommonStore.left', context: context);

  @override
  int get left {
    _$leftAtom.reportRead();
    return super.left;
  }

  @override
  set left(int value) {
    _$leftAtom.reportWrite(value, super.left, () {
      super.left = value;
    });
  }

  late final _$dataAtom = Atom(name: 'CommonStore.data', context: context);

  @override
  ObservableList<ToDoModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<ToDoModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$rightAtom = Atom(name: 'CommonStore.right', context: context);

  @override
  int get right {
    _$rightAtom.reportRead();
    return super.right;
  }

  @override
  set right(int value) {
    _$rightAtom.reportWrite(value, super.right, () {
      super.right = value;
    });
  }

  late final _$valueOfSliderAtom =
      Atom(name: 'CommonStore.valueOfSlider', context: context);

  @override
  int get valueOfSlider {
    _$valueOfSliderAtom.reportRead();
    return super.valueOfSlider;
  }

  @override
  set valueOfSlider(int value) {
    _$valueOfSliderAtom.reportWrite(value, super.valueOfSlider, () {
      super.valueOfSlider = value;
    });
  }

  late final _$CommonStoreActionController =
      ActionController(name: 'CommonStore', context: context);

  @override
  void roll() {
    final _$actionInfo =
        _$CommonStoreActionController.startAction(name: 'CommonStore.roll');
    try {
      return super.roll();
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$CommonStoreActionController.startAction(
        name: 'CommonStore.increment');
    try {
      return super.increment();
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangedValue(double values) {
    final _$actionInfo = _$CommonStoreActionController.startAction(
        name: 'CommonStore.onChangedValue');
    try {
      return super.onChangedValue(values);
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTask(ToDoModel singleData) {
    final _$actionInfo =
        _$CommonStoreActionController.startAction(name: 'CommonStore.addTask');
    try {
      return super.addTask(singleData);
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTask(int index) {
    final _$actionInfo = _$CommonStoreActionController.startAction(
        name: 'CommonStore.removeTask');
    try {
      return super.removeTask(index);
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTask(int? index, String newTitle, String newDate,
      String newPriority, Color newPriorityColor) {
    final _$actionInfo = _$CommonStoreActionController.startAction(
        name: 'CommonStore.updateTask');
    try {
      return super
          .updateTask(index, newTitle, newDate, newPriority, newPriorityColor);
    } finally {
      _$CommonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
connectivityStream: ${connectivityStream},
left: ${left},
data: ${data},
right: ${right},
valueOfSlider: ${valueOfSlider},
todoCompleteList: ${todoCompleteList},
total: ${total}
    ''';
  }
}
