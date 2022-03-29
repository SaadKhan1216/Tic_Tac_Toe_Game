import 'package:flutter/material.dart';

class BottomScreenImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 11.04),
            child: Image.asset('images/bluevector.png',
                height: 42.41, width: 42.44),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.22, top: 8.5),
            child: Image.asset('images/bluecircle.png',
                height: 47.5, width: 47.52),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.78, top: 8.5),
            child: Image.asset('images/bluecircle.png',
                height: 47.5, width: 47.52),
          )
        ],
      ),
    );
  }
}