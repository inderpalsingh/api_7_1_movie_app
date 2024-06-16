import 'package:api_7_1_movie_app/presentation/constants/header/top_user_profile.dart';
import 'package:flutter/material.dart';

import '../constants/category_images/category_image.dart';
import '../constants/header/top_categories.dart';

class HomePage extends StatelessWidget {
  MediaQueryData? mediaQuery;

  List<String> categories = [
    'Drama',
    'Kids',
    'Horror',
    '90\'s',
    'Action',
  ];

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xff0f0f0f0),
              height: mediaQuery!.size.height * 0.12,
              child: topProfile(),
            ),
            const SizedBox(height: 20),

            /// categories
            SizedBox(
              height: 40,
              child: TopCategories(categoriesList: categories),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, index) {
                  return const CategoryImage();
                },
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Text 1'), Text('Text 2')],
                  ),
                ),
                Column(
                  children: [Text('Text 1'), Text('Text 2')],
                ),
                Column(
                  children: [Text('Text 1'), Text('Text 2')],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Selections', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(21), color: Colors.grey.shade200),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 15,
                    child: Container(
                      height: 170,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(51),
                        color: const Color(0xff0ffb906),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 50,
                    top: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Movies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text('2022',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text('50 Movies',style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  )
                ],
              )
            )


          ],
        ),
      ),
    );
  }
}
