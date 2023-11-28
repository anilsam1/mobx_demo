import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx_demo/main.dart';
import 'package:mobx_demo/model/to_do_model.dart';
import 'package:mobx_demo/routes/app_router.dart';
import 'package:mobx_demo/ui/to_do_list/neomorphism.dart';

@RoutePage()
class AddDetailPage extends StatefulWidget {
  final bool fromEditItem;
  final int? indexFromEditItem;
  final ToDoModel? editData;

  const AddDetailPage(
      {super.key,
      required this.fromEditItem,
      this.indexFromEditItem,
      this.editData});





  @override
  State<AddDetailPage> createState() => _AddDetailPageState();
}

class _AddDetailPageState extends State<AddDetailPage> {
  ValueNotifier<String> selectedValue = ValueNotifier("Low Priority");
  final formKey = GlobalKey<FormState>();
  Color priorityColor = Colors.white;
  DateTime today = DateTime.now();
  ValueNotifier<DateTime> selectedDate = ValueNotifier(DateTime.now());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "Low Priority", child: Text("Low Priority")),
      const DropdownMenuItem(
          value: "Medium Priority", child: Text("Medium Priority")),
      const DropdownMenuItem(
          value: "High Priority", child: Text("High Priority")),
    ];
    return menuItems;
  }

  chooseColor(String value) {
    debugPrint("value:---  $value");
    switch (value) {
      case "Low Priority":
        {
          priorityColor = Colors.green;
        }
        break;

      case "Medium Priority":
        {
          priorityColor = Colors.orange;
        }
        break;

      case "High Priority":
        {
          priorityColor = Colors.red;
        }
        break;
    }
  }

  @override
  void initState() {
    if (widget.fromEditItem) {
      _titleController.text = widget.editData!.title;
      _dateController.text = widget.editData!.date;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6f1e51),
      appBar: AppBar(
        backgroundColor: const Color(0xff6f1e51),
        title: widget.fromEditItem
            ? const Text(
                "Edit Details",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            : const Text(
                "Add Details",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _commonTextField(
                  hint: "Title",
                  suffix: false,
                  fieldEnable: false,
                  commonController: _titleController,
                  valid: validName),
              const SizedBox(
                height: 20,
              ),
              _commonTextField(
                  hint: "Date",
                  suffix: true,
                  fieldEnable: true,
                  commonController: _dateController,
                  function: selectDate),
              const SizedBox(
                height: 20,
              ),
              ValueListenableBuilder(
                valueListenable: selectedValue,
                builder: (BuildContext context, value, Widget? child) {
                  return NeoMorphismPage(
                      childWidget: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 8),
                    child: DropdownButton(
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(12),
                      value: value,
                      dropdownColor: const Color(0xff6f1e51),
                      style: const TextStyle(color: Colors.white),
                      underline: const SizedBox(),
                      items: dropdownItems,
                      onChanged: (String? newValue) {
                        selectedValue.value = newValue!;
                        chooseColor(newValue);
                      },
                    ),
                  ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              NeoMorphismPage(
                  childWidget: SizedBox(
                height: 50.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff6f1e51)),
                    onPressed: () {
                      if (widget.fromEditItem) {
                        if (formKey.currentState!.validate()) {
                          if (_dateController.text.isEmpty) {
                            final snackBar = SnackBar(
                              content: const Text("Please select birthdate"),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            debugPrint(chooseColor(selectedValue.value));
                            counter.updateTask(
                                widget.indexFromEditItem,
                                _titleController.text,
                                _dateController.text,
                                selectedValue.value,
                                priorityColor);
                            AutoRouter.of(context).push( const ListRoute());
                          }
                        }
                      } else {
                        if (formKey.currentState!.validate()) {
                          if (_dateController.text.isEmpty) {
                            final snackBar = SnackBar(
                              content: const Text("Please select birthdate"),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            debugPrint(chooseColor(selectedValue.value));
                            counter.addTask(ToDoModel(
                                title: _titleController.text,
                                date: _dateController.text,
                                priority: selectedValue.value,
                                priorityColor: priorityColor, isCompleted: false));

                            AutoRouter.of(context).push(const ListRoute());
                          }
                        }
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.fromEditItem
                            ? const Text("Edit")
                            : const Text("Add"),
                        const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        )
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _commonTextField({
    required String hint,
    required bool suffix,
    FormFieldValidator<String>? valid,
    GestureTapCallback? function,
    required bool fieldEnable,
    required TextEditingController commonController,
  }) {
    return Center(
      child: NeoMorphismPage(
          childWidget: SizedBox(
        height: 50.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: commonController,
            onTap: function,
            validator: valid,
            readOnly: fieldEnable,
            style: const TextStyle(fontSize: 14, color: Colors.white),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                hintText: hint,
                fillColor: const Color(0xff6f1e51),
                suffixIcon: suffix
                    ? const Icon(
                        Icons.date_range,
                        color: Colors.white,
                      )
                    : const SizedBox(
                        height: 1,
                        width: 1,
                      )),
          ),
        ),
      )),
    );
  }

  Future<dynamic> selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.year,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime(today.year - 18, today.month, today.day),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xff6f1e51),
            hintColor: const Color(0xFF8CE7F1),
            colorScheme: const ColorScheme.light(primary: Color(0xff6f1e51)),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
      selectableDayPredicate: _decideWhichDayToEnable,
    );
    if (picked != null) {
      selectedDate.value = picked;
      String dateSlug =
          "${selectedDate.value.day.toString().padLeft(2, '0')}-${selectedDate.value.month.toString().padLeft(2, '0')}-${selectedDate.value.year.toString()}";
      _dateController.text = dateSlug;
      // calAge(picked);
    }
  }

  bool _decideWhichDayToEnable(DateTime day) {
    if ((day.isAfter(DateTime(1900)) &&
        day.isBefore(DateTime(today.year - 18, today.month, today.day)))) {
      return true;
    }
    return false;
  }

  String? validName(String? value) {
    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return "Please enter valid details";
    } else {
      return null;
    }
  }
}
