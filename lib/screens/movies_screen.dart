import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/custom_appbar.dart';
import 'package:netflix_clone/widgets/featured_movie_card.dart';
import 'package:netflix_clone/widgets/filter_bar.dart';
import 'package:netflix_clone/widgets/home_screen_listbar.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              widget: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 15),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: FilterBar(
                              text: "Movies",
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(width: 10),
                          const FilterBar(
                            text: "All Categories",
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    const FeaturedMovieCard(),
                    const HomeScreenListBar(
                      headingText: "Comedy Movies",
                    ),
                    const HomeScreenListBar(headingText: "Trending Now"),
                    const HomeScreenListBar(
                        headingText: "Top 10 Movies in India"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
