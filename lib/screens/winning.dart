import 'package:flutter/material.dart';

class WinningScreen extends StatelessWidget {
  final String player;
  final String status;
  final Color colors;
  const WinningScreen({required this.player, this.status = 'WON', this.colors = const Color(0xff0D47A1)});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/trophy.png', height: 212, width: 212),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                player,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Text(
              status,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}