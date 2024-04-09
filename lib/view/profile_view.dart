import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_task_2/assets/icons.dart';
import 'package:mvvm_task_2/widgets/custom_navigationbar.dart';
import 'package:mvvm_task_2/viewmodel/main_viewmodel.dart';

// Importiere die CustomTopBar
import 'package:mvvm_task_2/widgets/custom_topbar.dart';

class ProfileView extends StatelessWidget {
  final MainViewModel viewModel = Get.put(MainViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Profile'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTopBar(),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              child: Icon(
                Iconsax.user,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Erika Musterfrau', // Profilname
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'erika.musterfrau@example.com', // E-Mail-Adresse
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Iconsax.location),
              title: Text('Stuttgart, Germany'), // Standort
            ),
            const ListTile(
              leading: Icon(Iconsax.activity),
              title: Text('+49 1234567890'),
            ),
            const ListTile(
              leading: Icon(Iconsax.link),
              title: Text('https://example.com'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(viewModel: viewModel),
    );
  }
}
