import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mobx_demo/generated/assets.dart';
import 'package:mobx_demo/main.dart';
import 'package:mobx_demo/routes/app_router.dart';
import 'package:mobx_demo/ui/to_do_list/neomorphism.dart';
import 'package:mobx_demo/value/style.dart';

@RoutePage()
class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff6f1e51),
          title: const Text(
            "To do list",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: () {
             context.router.push(const CompletedTaskRoute());
          }, icon: const Icon(Icons.task_sharp ,color: Colors.white,))],
        ),
        backgroundColor: const Color(0xff6f1e51),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff6f1e51),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            shadows: [
              BoxShadow(
                color: Color(0xff8d3c6f),
                offset: Offset(-20.0, -20.0),
                blurRadius: 36,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xff510033),
                offset: Offset(20.0, 20.0),
                blurRadius: 36,
                spreadRadius: 0.0,
              ),
            ],
          ),
          onPressed: () {
            AutoRouter.of(context).push(AddDetailRoute(fromEditItem: false));
          },
        ),
        body: Observer(
          builder: (BuildContext context) {
            return counter.data.isEmpty
                ? Center(child: Lottie.asset(Assets.lottiefilesEmpty))
                : ListView.builder(
                    itemCount: counter.data.length,
                    itemBuilder: (context, index) {


                      var task = counter.data[index];
                      debugPrint("is complete......................${task.isCompleted}");
                      return Dismissible(
                        background: Container(color: Colors.red),
                        onDismissed: (direction) {
                          debugPrint("items :---- ${counter.data.length}");
                          counter.removeTask(index);

                          debugPrint("items :---- ${counter.data.length}");
                        },
                        key: Key(task.toString()),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8)
                              .r,
                          child: NeoMorphismPage(
                              childWidget: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: Row(
                              children: [
                                8.w.horizontalSpace,
                                Observer(
                                  builder: (context) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        unselectedWidgetColor: Colors.white,
                                      ),
                                      child: Checkbox(
                                        value: task.isCompleted,
                                         activeColor:const Color(0xff6f1e51),
                                        checkColor: Colors.white,
                                        onChanged: (_) {
                                          task.isCompleted = !task.isCompleted;
                                        },
                                      ),
                                    );
                                  }
                                ),
                                8.w.horizontalSpace,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      task.date,
                                      textAlign: TextAlign.center,
                                      style: textFieldStyle.copyWith(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.4)),
                                    ),
                                    15.w.horizontalSpace,
                                    Row(
                                      children: [
                                        Icon(Icons.circle,
                                            color: counter
                                                .data[index].priorityColor),
                                        Observer(
                                          builder: (context) {
                                            return Text(
                                              task.title,
                                              style: task.isCompleted ? textFieldStyle.copyWith(decoration: TextDecoration.lineThrough) : textFieldStyle,
                                            );
                                          }
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                 Observer(builder: (context) {
                                   return  !task.isCompleted ? IconButton(
                                     color: Colors.white,
                                     onPressed: () {
                                       AutoRouter.of(context).push(AddDetailRoute(
                                         fromEditItem: true,
                                         indexFromEditItem: index,
                                         editData: task,
                                       ));
                                     },
                                     icon: const Icon(Icons.edit),
                                   ) : const SizedBox();
                                 },),
                                8.w.horizontalSpace
                              ],
                            ),
                          )),
                        ),
                      );
                    },
                  );
          },
        ));
  }
}
