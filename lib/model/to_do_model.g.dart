// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ToDoModel on _ToDoModel, Store {
  late final _$titleAtom = Atom(name: '_ToDoModel.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$dateAtom = Atom(name: '_ToDoModel.date', context: context);

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$priorityAtom =
      Atom(name: '_ToDoModel.priority', context: context);

  @override
  String get priority {
    _$priorityAtom.reportRead();
    return super.priority;
  }

  @override
  set priority(String value) {
    _$priorityAtom.reportWrite(value, super.priority, () {
      super.priority = value;
    });
  }

  late final _$priorityColorAtom =
      Atom(name: '_ToDoModel.priorityColor', context: context);

  @override
  Color get priorityColor {
    _$priorityColorAtom.reportRead();
    return super.priorityColor;
  }

  @override
  set priorityColor(Color value) {
    _$priorityColorAtom.reportWrite(value, super.priorityColor, () {
      super.priorityColor = value;
    });
  }

  late final _$isCompletedAtom =
      Atom(name: '_ToDoModel.isCompleted', context: context);

  @override
  bool get isCompleted {
    _$isCompletedAtom.reportRead();
    return super.isCompleted;
  }

  @override
  set isCompleted(bool value) {
    _$isCompletedAtom.reportWrite(value, super.isCompleted, () {
      super.isCompleted = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
date: ${date},
priority: ${priority},
priorityColor: ${priorityColor},
isCompleted: ${isCompleted}
    ''';
  }
}
