import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomPage(img: index + 1, color: Colors.white);
        },
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  const CustomPage({required this.img, required this.color, super.key});

  final Color color;
  final int img;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.8,
          color: color,
          child: ClipRRect(
              child: Image(
            image: AssetImage('assets/' + '$img' + '.jpg'),
            fit: BoxFit.fill,
          )),
        ),
        Container(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Minimalism',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Milimalism text 2',
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
        )
      ],
    );
  }
}
