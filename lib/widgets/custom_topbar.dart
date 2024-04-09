import 'package:flutter/material.dart';
import 'package:mvvm_task_2/assets/icons.dart';

class CustomTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 238, 211, 8), // Hintergrundfarbe des Topbars
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Horizontaler Abstand
      height: kToolbarHeight * 2, // Standardhöhe für AppBar
      child:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'INDUKO', // Titel des Topbars
            style: TextStyle(
              color: Colors.white, // Textfarbe
              fontSize: 20.0, // Schriftgröße
              fontWeight: FontWeight.bold, // Fettschrift
            ),
            ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 238, 211, 8), // Hintergrundfarbe des Kreises
                child: Icon(
                  Iconsax.notification, // Icon für Benachrichtigungen
                  color: Colors.white, // Icon-Farbe
                ),
              ),
              SizedBox(width: 16.0), // Abstand zwischen den Icons
              CircleAvatar(
                backgroundColor: Color.fromARGB(
                    255, 170, 74, 74), // Hintergrundfarbe des Kreises
                child: Icon(Iconsax.logout_14, // Icon für Logout
                    color: Colors.white // Icon-Farbe
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
