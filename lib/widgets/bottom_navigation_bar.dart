import 'package:flutter/material.dart';

class BottomNavigationbar extends StatelessWidget {
  const BottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 10,
      backgroundColor: const Color.fromARGB(221, 22, 22, 22),
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "New & Hot"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Netflix"),
      ],
    );
  }
}
