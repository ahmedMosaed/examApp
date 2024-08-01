import 'package:flutter/material.dart';

class RecommendedListView extends StatelessWidget {
  final List<String> imagePaths;

  const RecommendedListView({
    super.key,
    required this.imagePaths,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[200], // Replace with your secondaryColor
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePaths[index], // Use the image path from the list
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}

