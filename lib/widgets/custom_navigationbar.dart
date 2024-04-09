import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/assets/icons.dart';
import 'package:mvvm_task_2/viewmodel/main_viewmodel.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final MainViewModel viewModel;

  const CustomBottomNavigationBar({required this.viewModel});
@override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: viewModel.currentIndex.value,
          onTap: (index) {
            viewModel.currentIndex.value = index;
            switch (index) {
              case 0:
                Get.toNamed('/');
                break;
              case 1:
                Get.toNamed('/recommendations');
                break;
              case 2:
                Get.toNamed('/profile');
                break;
              default:
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.star),
              label: 'Recommendations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
          selectedItemColor: _getSelectedItemColor(viewModel.currentIndex.value),
        ));
  }

  Color _getSelectedItemColor(int currentIndex) {
    // Возвращает цвет подсветки для выбранного элемента в зависимости от его индекса
    switch (currentIndex) {
      case 0:
        return Colors.yellow; // Цвет для Home
      case 1:
        return Colors.yellow; // Цвет для Recommendations
      case 2:
        return Colors.yellow; // Цвет для Profile
      default:
        return Colors.yellow; // Цвет по умолчанию
    }
  }
}
