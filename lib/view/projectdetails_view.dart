import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/assets/icons.dart';
import 'package:mvvm_task_2/model/model.dart';
import 'package:mvvm_task_2/viewmodel/main_viewmodel.dart';
import 'package:mvvm_task_2/widgets/custom_navigationbar.dart';
import 'package:mvvm_task_2/widgets/custom_topbar.dart';

class ProjectDetailsView extends StatelessWidget {
  final Project project;
  final MainViewModel viewModel = Get.put(MainViewModel());

  ProjectDetailsView({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Project Details', style: TextStyle(fontSize: 18)), // Уменьшаем размер шрифта заголовка
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // Добавляем вертикальный отступ
            child: const Icon(
              Iconsax.arrow_left,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          CustomTopBar(),
          SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Name:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Уменьшаем размер шрифта для названия проекта
                  ),
                  SizedBox(height: 4), // Уменьшаем вертикальный отступ между названием проекта и текстовым полем
                  TextFormField(
                    initialValue: project.name,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Уменьшаем высоту текстового поля
                    ),
                    style: TextStyle(fontSize: 14), // Уменьшаем размер шрифта для текстового поля
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Start Date:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  TextFormField(
                    initialValue: project.startDate,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    ),
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Description:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  TextFormField(
                    initialValue: 'Here is the description of the project',
                    readOnly: true,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    ),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(viewModel: viewModel),
    );
  }
}
       
    

    
