import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({
    super.key,
    required this.categoriesList,
  });

  final List<String> categoriesList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoriesList.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.amber,
            ),
            child: Center(child: Text(categoriesList[index])),
          ),
        );
      },

    );
  }
}
