import 'package:flutter/material.dart';


class FeaturedMovieCard extends StatelessWidget {
  const FeaturedMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 30,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/images/article370cover.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: Container(
                width: 150,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
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
            Positioned(
              bottom: 10,
              right: 15,
              child: Container(
                width: 150,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
