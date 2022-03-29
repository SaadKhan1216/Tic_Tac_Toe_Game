import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/splash_screen_images.dart/bottomscreen_images.dart';
import 'package:tic_tac_toe/screens/splash_screen_images.dart/topscreen_images.dart';

class SplashScreenModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xff0D47A1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 66),
                      child: Text('K A T I   Z E R O',style: TextStyle(
                        color: Colors.white,fontSize: 35
                        ),
                      ),
                    ),
                  ),
                const Spacer(),
                TopScreenImages()
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xff42A5F5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomScreenImages(),
                  const Spacer(),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3),
                      child: Text('POWERED BY',style: TextStyle(
                        color: Colors.white,fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 55),
                      child: Text('T E C H  I D A R A',style: TextStyle(
                        color: Color(0xff0D47A1),fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
          )
        ],
      )
    );
  }
}