import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'to_do_model.g.dart';

class ToDoModel = _ToDoModel with _$ToDoModel;

abstract class _ToDoModel with Store {
  @observable
  String title = '';

  @observable
  String date = '';

  @observable
  String priority = '';

  @observable
  Color priorityColor = Colors.white;

  @observable
  bool isCompleted = false;

  _ToDoModel(
      {required this.title,
      required this.date,
      required this.priority,
      required this.priorityColor,
      required this.isCompleted});
}
