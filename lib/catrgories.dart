import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  final List<String> categories;
  final List<String> imagePaths;

  const CategoriesListView({
    super.key,
    required this.categories,
    required this.imagePaths,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100, // Adjust the height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200], // Background color
                    ),
                    child: CircleAvatar(
                      radius: 32, // Adjust the radius as needed
                      backgroundColor: Colors.transparent, // Make it transparent to see the outer container's color
                      backgroundImage: AssetImage(imagePaths[index]),
                    ),
                  ),
                  const SizedBox(height: 5), // Space between image and text
                  Text(
                    categories[index],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}