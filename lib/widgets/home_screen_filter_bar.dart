import 'package:flutter/material.dart';

class HomeScreenFilterBar extends StatelessWidget {
  const HomeScreenFilterBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 4),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        border: Border.all(color: Colors.white70),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ),
    );
    ;
  }
}
