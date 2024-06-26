import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:netflix_clone/widgets/custom_appbar.dart';
import 'package:netflix_clone/widgets/featured_movie_card.dart';
import 'package:netflix_clone/widgets/filter_bar.dart';
import 'package:netflix_clone/widgets/home_screen_listbar.dart';

class TvShowsScreen extends StatelessWidget {
  const TvShowsScreen({super.key});

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
                        "TV Shows",
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
                              text: "TV Shows",
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
                    FeaturedMovieCard(),
                    HomeScreenListBar(headingText: "TV Comedies"),
                    HomeScreenListBar(
                        headingText: "Movies & TV Shows Dubbed in Hindi"),
                    HomeScreenListBar(headingText: "Top 10 TV Shows in India"),
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
