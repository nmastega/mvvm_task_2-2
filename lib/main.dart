import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/view/main_view.dart';
import 'package:mvvm_task_2/view/profile_view.dart';
import 'package:mvvm_task_2/view/recommendations_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IdeaLize 2024',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/', page: () => MainView()),
        GetPage(name: '/recommendations', page: () => RecommendationView()),
        GetPage(name: '/profile', page: () => ProfileView()),
      ],
      home: MainView(),
    );
  }
}
