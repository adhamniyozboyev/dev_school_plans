import 'package:flutter/material.dart';

Widget getInfo(double height, double width,
    [double topRight = 0, topLeft = 0, bottomRight = 0, bottomLeft = 0]) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight),
            bottomLeft: Radius.circular(bottomLeft))),
    height: height,
    width: width,
  );
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getInfo(70, 70, 0, 0, 20, 0),
              getInfo(70, 70, 0, 0, 0, 20)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getInfo(40, 40, 0, 20, 0, 0),
                      SizedBox(
                        width: 30,
                      ),
                      getInfo(40, 40, 20, 0, 0, 0),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      getInfo(40, 40, 0, 0, 0, 20),
                      SizedBox(
                        width: 30,
                      ),
                      getInfo(40, 40, 0, 0, 20, 0),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [getInfo(70, 70, 20), getInfo(70, 70, 0, 20)],
          ),
        ],
      ),
    ),
  ));
}
