import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        color: color,
        border: Border.all(color: Colors.white70),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ),
    );
    ;
  }
}
