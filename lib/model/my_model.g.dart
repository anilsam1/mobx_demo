// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyModel on _MyModel, Store {
  late final _$nameAtom = Atom(name: '_MyModel.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$ageAtom = Atom(name: '_MyModel.age', context: context);

  @override
  int get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(int value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  late final _$_MyModelActionController =
      ActionController(name: '_MyModel', context: context);

  @override
  void setName(String newName) {
    final _$actionInfo =
        _$_MyModelActionController.startAction(name: '_MyModel.setName');
    try {
      return super.setName(newName);
    } finally {
      _$_MyModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAge(int newAge) {
    final _$actionInfo =
        _$_MyModelActionController.startAction(name: '_MyModel.setAge');
    try {
      return super.setAge(newAge);
    } finally {
      _$_MyModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
age: ${age}
    ''';
  }
}
