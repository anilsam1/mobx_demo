import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mobx_demo/hive/task.dart';
import 'package:mobx_demo/routes/app_router.dart';
import 'package:mobx_demo/store/common_store.dart';
import 'package:mobx_demo/ui/counter_page.dart';
import 'package:mobx_demo/ui/person.dart';
import 'package:mobx_demo/ui/slider_task/slider.dart';
import 'package:mobx_demo/ui/to_do_list/add_details.dart';
import 'package:mobx_demo/ui/to_do_list/list_page.dart';
import 'package:hive/hive.dart';

void main() async{

  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>('taskBox');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: router.config(),
          debugShowCheckedModeBanner: false,
          title: 'First Method',
        );
      },
    );
  }
}

final counter = Counter();