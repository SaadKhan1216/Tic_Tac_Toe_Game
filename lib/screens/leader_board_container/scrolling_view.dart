import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/leader_board_container/drawContainer.dart';
import 'package:tic_tac_toe/screens/leader_board_container/win_container.dart';

class ScrollingView extends StatelessWidget {
  final List<String> winnerRecords;
  const ScrollingView({required this.winnerRecords});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [if (winnerRecords.isNotEmpty) ...updationOfContainers()],
        ),
      ),
    );
  }

  updationOfContainers() {
    List<Widget> containers = [];
    int count = 0;
    for (var i in winnerRecords) {
      count++;
      if (i == 'Player 1') {
        containers.add(WinContainer(text: i, image: 'images/ltbluecircle.png', count: '$count.'));
      } else if (i == 'Player 2') {
        containers.add(WinContainer(text: i, image: 'images/bluevector.png',count: '$count.'));
      } else {
        containers.add(DrawContainer(
          count: '$count.',
        ));
      }
    }
    return containers;
  }
}