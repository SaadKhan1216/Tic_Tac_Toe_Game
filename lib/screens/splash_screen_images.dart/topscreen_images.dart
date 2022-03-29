import 'package:flutter/material.dart';

class TopScreenImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 14.75),
                child: Image.asset(
                  'images/circle.png',
                  height: 47.5,
                  width: 47.51,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 17.29, left: 14.68),
                child: Image.asset(
                  'images/circle.png',
                  height: 47.5,
                  width: 47.51,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.67, left: 17.32),
                child: Image.asset(
                  'images/Vector.png',
                  height: 42.42,
                  width: 42.44,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.25),
                child: Image.asset('images/circle.png',
                    height: 47.5, width: 47.51),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.79, left: 17.22),
                child: Image.asset(
                  'images/Vector.png',
                  height: 42.42,
                  width: 42.44,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.79, left: 19.86),
                child: Image.asset(
                  'images/Vector.png',
                  height: 42.42,
                  width: 42.44,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}