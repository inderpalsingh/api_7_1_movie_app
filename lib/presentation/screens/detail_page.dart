import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  MediaQueryData? mediaQueryData;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: mediaQueryData!.size.height * .6,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(51),
                    child: Image.network(
                      'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg',
                      fit: BoxFit.cover,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 50, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Positioned(
                bottom: 200,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Avtar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0)),
                    const SizedBox(height: 15),
                    SizedBox(
                      child: Row(
                        children: [
                          const Text('2016', style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 15),
                          const Text('2h 15min', style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 15),
                          const Text('18+', style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            color: Colors.amber,
                          )
,                          const SizedBox(width: 15),
                          const Text('2h 15min', style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 15),
                          const Text('18+', style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 15),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
