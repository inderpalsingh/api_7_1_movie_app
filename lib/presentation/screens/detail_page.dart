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
              SizedBox(
                height: mediaQueryData!.size.height * .6,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(51),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg',
                        fit: BoxFit.cover,

                      ),
                    )),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 450,left: 20),
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff06a766d)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff0ffb906),
                            child: Text('8.1',),
                          ),
                          Icon(Icons.star_border_outlined,color: Colors.white,size: 40),

                        ],
                      ),
                    ),
                  ),

                    Container(
                    margin: const EdgeInsets.only(top: 450,left: 20),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff06a766d)
                    ),
                    child: Icon(Icons.bookmark_outline_outlined, size: 35,color: Colors.white,)
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 450,left: 20),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                    ),
                    child: Icon(Icons.play_arrow_outlined, size: 40,)
                  ),


                ],
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
              const Positioned(
                bottom: 170,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Avtar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0)),

                    SizedBox(
                      child: Row(
                        children: [
                          Text('2016', style: TextStyle(color: Colors.white,fontSize: 15)),
                          SizedBox(width: 15),
                          Text('2h 15min', style: TextStyle(color: Colors.white,fontSize: 15)),
                          SizedBox(width: 15),
                          Text('18+', style: TextStyle(color: Colors.white,fontSize: 15)),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),

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
