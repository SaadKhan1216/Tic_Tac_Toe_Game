import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/leader_board_container/scrolling_view.dart';

class LeaderBoard extends StatelessWidget {
  final List<String> winnerRecords;

  const LeaderBoard({required this.winnerRecords});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'images/backarrow.png',
                      height: 19,
                      width: 10,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'L E A D E R',
                        style: TextStyle(
                            color: Color(0xff0D47A1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'B O A R D',
                        style: TextStyle(
                            color: Color(0xff0D47A1),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 47,
          ),
          ScrollingView(winnerRecords: winnerRecords),
        ],
      ),
    );
  }
}