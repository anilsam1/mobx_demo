import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/model/my_model.dart';
import 'package:mobx_demo/store/my_model_store.dart';

@RoutePage()
class MyListWidgetPage extends StatelessWidget {
  final myModelStore = MyModelStore();

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Observable List Example'),),
      body: Column(children: <Widget>[ Observer(builder: (context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: myModelStore.modelList.length,
          itemBuilder: (context, index) {
            final model = myModelStore.modelList[index];
            return ListTile(
              title: Text(model.name), subtitle: Text('Age: ${model.age}'),);
          },);
      },), ElevatedButton(
        onPressed: () {
          final newModel = MyModel();
          newModel.setName('John');
          newModel.setAge(30);
          myModelStore.addModel(newModel);
        }, child: const Text('Add Model'),),
      ],),);
  }
}