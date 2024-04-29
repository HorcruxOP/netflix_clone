import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.widget});
  final List<Widget> widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget,
      ),
    );
  }
}
