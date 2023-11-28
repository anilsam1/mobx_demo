import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 1)
class Task{


  @HiveField(0)
  String name;

  @HiveField(1)
  int mobileNumber;

  @HiveField(2)
  String location;

  Task({required this.name , required this.mobileNumber ,required this.location});

}