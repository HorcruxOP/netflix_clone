import 'package:flutter/material.dart';

class HomeScreenListBar extends StatelessWidget {
  const HomeScreenListBar({super.key, required this.headingText});

  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            headingText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 15),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 200,
                    width: 140,
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/article370cover.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    left: 18,
                    right: 18,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 252, 32, 16)),
                      child: const Center(
                        child: Text(
                          "Recently added",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
