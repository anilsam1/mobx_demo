// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AddDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddDetailPage(
          key: args.key,
          fromEditItem: args.fromEditItem,
          indexFromEditItem: args.indexFromEditItem,
          editData: args.editData,
        ),
      );
    },
    CompletedTaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompletedTaskPage(),
      );
    },
    DemoTaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DemoTaskPage(),
      );
    },
    DiceRollRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiceRollPage(),
      );
    },
    ListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ListPage(),
      );
    },
    MyListWidgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyListWidgetPage(),
      );
    },
  };
}

/// generated route for
/// [AddDetailPage]
class AddDetailRoute extends PageRouteInfo<AddDetailRouteArgs> {
  AddDetailRoute({
    Key? key,
    required bool fromEditItem,
    int? indexFromEditItem,
    ToDoModel? editData,
    List<PageRouteInfo>? children,
  }) : super(
          AddDetailRoute.name,
          args: AddDetailRouteArgs(
            key: key,
            fromEditItem: fromEditItem,
            indexFromEditItem: indexFromEditItem,
            editData: editData,
          ),
          initialChildren: children,
        );

  static const String name = 'AddDetailRoute';

  static const PageInfo<AddDetailRouteArgs> page =
      PageInfo<AddDetailRouteArgs>(name);
}

class AddDetailRouteArgs {
  const AddDetailRouteArgs({
    this.key,
    required this.fromEditItem,
    this.indexFromEditItem,
    this.editData,
  });

  final Key? key;

  final bool fromEditItem;

  final int? indexFromEditItem;

  final ToDoModel? editData;

  @override
  String toString() {
    return 'AddDetailRouteArgs{key: $key, fromEditItem: $fromEditItem, indexFromEditItem: $indexFromEditItem, editData: $editData}';
  }
}

/// generated route for
/// [CompletedTaskPage]
class CompletedTaskRoute extends PageRouteInfo<void> {
  const CompletedTaskRoute({List<PageRouteInfo>? children})
      : super(
          CompletedTaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompletedTaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DemoTaskPage]
class DemoTaskRoute extends PageRouteInfo<void> {
  const DemoTaskRoute({List<PageRouteInfo>? children})
      : super(
          DemoTaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'DemoTaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiceRollPage]
class DiceRollRoute extends PageRouteInfo<void> {
  const DiceRollRoute({List<PageRouteInfo>? children})
      : super(
          DiceRollRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiceRollRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListPage]
class ListRoute extends PageRouteInfo<void> {
  const ListRoute({List<PageRouteInfo>? children})
      : super(
          ListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyListWidgetPage]
class MyListWidgetRoute extends PageRouteInfo<void> {
  const MyListWidgetRoute({List<PageRouteInfo>? children})
      : super(
          MyListWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyListWidgetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
