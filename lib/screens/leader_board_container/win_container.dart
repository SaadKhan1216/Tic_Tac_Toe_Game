import 'package:flutter/material.dart';

class WinContainer extends StatelessWidget {
  final String text;
  final String image;
  final String count;
  const WinContainer({required this.text, required this.image, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 24, top: 9),
      padding: const EdgeInsets.only(left: 25),
      height: 98,
      decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 34),
            child: Text(
              count,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            image,
            height: 26,
            width: 26,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Image.asset(
              'images/trophy.png',
              height: 52,
              width: 52,
            ),
          )
        ],
      ),
    );
  }
}