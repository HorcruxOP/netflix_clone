import 'package:flutter/material.dart';

import 'package:netflix_clone/screens/tv_shows_screen.dart';
import 'package:netflix_clone/widgets/bottom_navigation_bar.dart';
import 'package:netflix_clone/widgets/custom_appbar.dart';
import 'package:netflix_clone/widgets/featured_movie_card.dart';
import 'package:netflix_clone/widgets/filter_bar.dart';
import 'package:netflix_clone/widgets/home_screen_listbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(
                widget: [
                  Image.asset("assets/logos/netflixlogo.png", height: 50),
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
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: const FilterBar(
                                text: "TV Shows",
                                color: Colors.transparent,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TvShowsScreen()));
                              },
                            ),
                            const SizedBox(width: 10),
                            const FilterBar(
                              text: "Movies",
                              color: Colors.transparent,
                            ),
                            const SizedBox(width: 10),
                            const FilterBar(
                              text: "Categories",
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                      const FeaturedMovieCard(),
                      const HomeScreenListBar(
                        headingText: 'Recently Added',
                      ),
                      const HomeScreenListBar(
                        headingText: 'Trending Now',
                      ),
                      const HomeScreenListBar(
                        headingText: 'Only On Netflix',
                      ),
                      const HomeScreenListBar(
                        headingText: 'Action Thrillers',
                      ),
                      const HomeScreenListBar(
                        headingText: 'True Crime',
                      ),
                      const HomeScreenListBar(
                        headingText: 'TV Shows',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationbar());
  }
}
