import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  final List<String> categories;

  const CategoriesListView({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 101,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Replace with your secondaryColor
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    categories[index], // Get the category name from the list
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

