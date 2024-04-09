import 'package:get/get.dart';
import 'package:mvvm_task_2/model/model.dart';

class MainViewModel extends GetxController {
  var currentIndex = 0.obs;

  final List<Project> projects = [
    Project(
      name: 'Project 1',
      startDate: '2023-04-10',
      
    ),
    Project(
      name: 'Project 2',
      startDate: '2023-05-15',
      
    ),
    Project(
      name: 'Project 3',
      startDate: '2023-06-20',
      
    ),
  ];
}



