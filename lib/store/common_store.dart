import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/model/to_do_model.dart';

part 'common_store.g.dart';

class Counter = CommonStore with _$Counter;

abstract class CommonStore with Store {
  @observable
  ObservableStream<ConnectivityResult> connectivityStream =
      ObservableStream(Connectivity().onConnectivityChanged);

  @computed
  ObservableList<ToDoModel> get todoCompleteList => ObservableList.of(data.where((element) => element.isCompleted));


  @readonly
  int _value = 0;

  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  ObservableList<ToDoModel> data = ObservableList<ToDoModel>();

  @observable
  int right = Random().nextInt(6) + 1;

  @observable
  int valueOfSlider = 10;

  @computed
  int get total => left + right;

  @action
  void roll() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }

  @action
  void increment() {
    _value++;
  }

  @action
  onChangedValue(double values) {
    valueOfSlider = values.round();
  }

  @action
  addTask(ToDoModel singleData) {
    data.add(singleData);
  }

  @action
  removeTask(int index) {
    data.removeAt(index);
  }

  @action
  void updateTask(int? index, String newTitle, String newDate,
      String newPriority, Color newPriorityColor) {


    data[index ?? 0] = ToDoModel(
        title: newTitle,
        date: newDate,
        priority: newPriority,
        priorityColor: newPriorityColor, isCompleted: false);
  }
}
