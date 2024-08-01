import 'dart:ui';
import 'package:exam_project/bestSeller.dart';
import 'package:exam_project/categories.dart';
import 'package:exam_project/constents.dart';
import 'package:exam_project/recommended.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: 'Audi',
                        style: TextStyle(
                          fontFamily: 'SFPRODISPLAYBOLD',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: primaryColor)),
                    TextSpan(
                      text: 'Booke',
                      style: TextStyle(
                        fontFamily: 'SFPRODISPLAYREGULAR',
                          fontWeight: FontWeight.w300
                          ,
                          color: primaryColor),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontFamily: 'SFPRODISPLAYBOLD',
                        color: Color(0XFFe8805e),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 8.0),
              child: Icon(
                Icons.settings,
                color: primaryColor,
                size: 24,
                weight: 24,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see more',
                          style: TextStyle(
                            fontSize: 14,
                             fontFamily: 'Poppins-Medium',
                              color: primaryColor,
                          ),
                        )),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              const SliverToBoxAdapter(child: CategoriesListView(categories: [
                'Art', 'Business', 'Comedy', 'Drama'
              ],)),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recommended For You',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see more',
                          style: TextStyle(
                              color: primaryColor,
                          fontSize: 14,
                            fontFamily: 'Poppins-Medium' ,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              const SliverToBoxAdapter(child: RecommendedListView(
                imagePaths: [
                  'assets/images/photo1.png',
                  'assets/images/photo2.png',
                  'assets/images/photo3.png',
                ],
              )),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Seller',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see more',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 14,
                            fontFamily: 'Poppins-Medium',
                          ),
                        )),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return const BestSellerListView();
                  },
                  childCount: 2,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            iconSize: 24,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.my_library_books_outlined),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


