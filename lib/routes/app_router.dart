import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx_demo/hive/demo_task.dart';
import 'package:mobx_demo/model/to_do_model.dart';
import 'package:mobx_demo/ui/dice_roll.dart';
import 'package:mobx_demo/ui/observable_model/my_list_widget.dart';
import 'package:mobx_demo/ui/to_do_list/add_details.dart';
import 'package:mobx_demo/ui/to_do_list/completed_tasks.dart';
import 'package:mobx_demo/ui/to_do_list/list_page.dart';


part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AddDetailRoute.page),
        AutoRoute(page: ListRoute.page, initial: true),
        AutoRoute(page: CompletedTaskRoute.page),
        AutoRoute(page: DiceRollRoute.page),
        AutoRoute(page: MyListWidgetRoute.page),
        AutoRoute(
          page: DemoTaskRoute.page,
        )
      ];
}
