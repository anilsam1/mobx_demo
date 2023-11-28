import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mobx_demo/hive/task.dart';


@RoutePage()
class DemoTaskPage extends StatefulWidget {
  const DemoTaskPage({super.key});

  @override
  State<DemoTaskPage> createState() => _DemoTaskPageState();
}

class _DemoTaskPageState extends State<DemoTaskPage> {


  Box<Task>? tasksBox;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tasksBox = Hive.box('taskBox');
  }

  void onAddTask() {
    if (_textEditingController.text.isNotEmpty) {
      final newTask = Task (name: _textEditingController.text, mobileNumber: 2342342 , location: "limbdi");
      tasksBox?.add(newTask);
      Navigator.pop(context);
      _textEditingController.clear();
      return;
    }
  }

  void onUpdateTask(int index, Task task) {
    tasksBox?.putAt(index, Task(name: task.name, mobileNumber: task.mobileNumber, location: task.location));
    return;
  }

  void onDeleteTask(int index) {
    tasksBox?.deleteAt(index);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO'),

      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
      final task = tasksBox?.get(index);

      return ListTile(
        title: Text(task!.name),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => onDeleteTask(index),
        ),
      );
    },
    itemCount: tasksBox!.length,
    separatorBuilder: (context, index) => Divider(),
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff0D3257),
        child: Icon(Icons.add),
        onPressed: () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Add New Task'),
              content: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(hintText: "Enter task"),
                autofocus: true,
              ),
              actions: [
                TextButton(onPressed: () {
                  setState(() {
                    onAddTask();
                  });
                }, child: Text('SAVE'))
              ],
            );
          },
        ),
      ),
    );
  }
}

class EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.inbox_outlined,
              size: 80.0, color: Color(0xff0D3257)),
          Container(
            padding: const EdgeInsets.only(top: 4.0),
            child: const Text(
              "Don't have any tasks",
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
