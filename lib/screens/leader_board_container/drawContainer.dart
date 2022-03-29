import 'package:flutter/material.dart';

class DrawContainer extends StatelessWidget {
final String count;

  const DrawContainer({required this.count}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 24, top: 9),
      padding: const EdgeInsets.only(left: 25),
      height: 98,
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 34),
            child: Text(count,style: const TextStyle(
              color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
            ),),
          ),
          Image.asset(
            'images/circle.png',
            height: 26,
            width: 26,
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Match Drawn',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Image.asset(
              'images/bluevector.png',
              height: 26,
              width: 26,
            ),
          )
        ],
      ),
    );
  }
}