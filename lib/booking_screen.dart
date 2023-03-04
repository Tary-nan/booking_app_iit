import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/favorite_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/notification_screen.dart';
import 'package:flutter_application_1/screens/parameter_screen.dart';

class BookingScreen extends StatefulWidget {
  BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int currentIndex = 0;

  List<Widget> listScreen = [
    HomeScreen(),
    FavoriteScreen(),
    NotificationScreen(),
    ParametreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    print("l'element actuelle est : $currentIndex");
    return Scaffold(
      backgroundColor: Colors.white,
      body: listScreen.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'ok',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xff5ea2a0),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
