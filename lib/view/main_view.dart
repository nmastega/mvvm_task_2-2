import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/assets/icons.dart';
import 'package:mvvm_task_2/widgets/custom_navigationbar.dart';
import 'package:mvvm_task_2/view/profile_view.dart';
import 'package:mvvm_task_2/viewmodel/main_viewmodel.dart';
import 'package:mvvm_task_2/view/recommendations_view.dart';

// Importiere die CustomTopBar
import 'package:mvvm_task_2/widgets/custom_topbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IdeaLize 2023',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      getPages: [
        GetPage(name: '/', page: () => MainView()),
        GetPage(name: '/recommendations', page: () => RecommendationView()),
        GetPage(name: '/profile', page: () => ProfileView()),
      ],
      initialRoute: '/',
    );
  }
}

class MainView extends StatelessWidget {
  final MainViewModel viewModel = MainViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('My Activities'),
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
          const Expanded(
            child: Center(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(viewModel: viewModel),
    );
  }
}
