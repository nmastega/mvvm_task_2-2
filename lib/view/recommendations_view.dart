import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/assets/icons.dart';
import 'package:mvvm_task_2/view/projectdetails_view.dart';
import 'package:mvvm_task_2/widgets/custom_navigationbar.dart';
import 'package:mvvm_task_2/viewmodel/main_viewmodel.dart';

// Importiere die CustomTopBar
import 'package:mvvm_task_2/widgets/custom_topbar.dart';

class RecommendationView extends StatelessWidget {
  final MainViewModel viewModel = Get.put(MainViewModel());

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Project Recommendation List'),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomTopBar(),
          SizedBox(height: 16), // Отступ между CustomTopBar и списком проектов
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.projects.length,
              itemBuilder: (context, index) {
                var project = viewModel.projects[index];
                return InkWell(
                  onTap: () {
                    Get.to(ProjectDetailsView(project: project));
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Iconsax.login, // Используем иконку из пакета iconsax
                              color: Colors.green, // Зеленый цвет иконки
                            ),
                            SizedBox(width: 8),
                            Text(
                              project.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Date of Start: ${project.startDate}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(viewModel: viewModel),
    );
  }
}
   


      
  

