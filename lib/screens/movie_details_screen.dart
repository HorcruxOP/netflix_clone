import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 30),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              "assets/images/article370cover.jpg",
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Article 370",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                const Text(
                  "2024",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 5,
                  ),
                  color: Colors.grey.withOpacity(0.4),
                  child: const Text(
                    "U/A 16+",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  "2h 38m",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignInside,
                          color: Colors.grey.withOpacity(0.4))),
                  child: const Text(
                    "HD",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 5,
            ),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow),
                  Text("Play"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 5,
            ),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  Text(
                    "Download",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
