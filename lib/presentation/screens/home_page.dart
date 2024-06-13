import 'package:api_7_1_movie_app/presentation/constants/header/top_user_profile.dart';
import 'package:flutter/material.dart';

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
          children: [
            Container(
              color: const Color(0xff0f0f0f0),
              height: mediaQuery!.size.height * 0.12,
               child: topProfile(),
            ),
            const SizedBox(height: 20),
            /// categories
            SizedBox(
              height: 50,
              child: TopCategories(categoriesList: categories),
            )
          ],
        ),
      ),
    );
  }
}
