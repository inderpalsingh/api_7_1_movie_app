import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Stack(
        children: [
          SizedBox(
            width: 160,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.pexels.com/photos/1433052/pexels-photo-1433052.jpeg',
                  fit: BoxFit.cover,
                )),
          ),
          const Positioned(
              bottom: 20,
              left: 10,
              child: CircleAvatar(
                backgroundColor: Color(0xff0ffb906),
                child: Text('7.2'),
              )),
        ],
      ),
    );
  }
}
