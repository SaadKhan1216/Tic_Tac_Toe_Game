import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/leader_board.dart';
import 'package:tic_tac_toe/screens/winning.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> winnerRecords = [];
  List<List<int>> winnerPattern = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  var imgCont1;
  var imgCont2;
  var imgCont3;
  var imgCont4;
  var imgCont5;
  var imgCont6;
  var imgCont7;
  var imgCont8;
  var imgCont9;
  bool winCont = false;
  List<int> pictures = [];
  String player = '';
  String playerTurn = "Player 1's Turn";
  Color playerTurnColor = const Color(0xff42A5F5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 71),
                height: 91,
                width: 91,
                decoration: BoxDecoration(
                    color: const Color(0xff42A5F5),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('images/circle.png'))),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28, top: 87),
                child: Text(
                  'VS',
                  style: TextStyle(
                      color: Color(0xffDBDBDB),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, top: 71),
                height: 91,
                width: 91,
                decoration: BoxDecoration(
                    color: const Color(0xff0D47A1),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('images/Vector.png'))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 11),
                child: Text(
                  'Player 1',
                  style: TextStyle(
                    color: Color(0xff656565),
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 11, left: 110),
                child: Text(
                  'Player 2',
                  style: TextStyle(
                    color: Color(0xff656565),
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
          if (!winCont)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                playerTurn,
                style: TextStyle(
                    color: playerTurnColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          const Spacer(),

//////////////////////////// GAME GRID STARTS /////////////////////////////////////
          ///
          Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(1)) {
                          setState(() {
                            statusCheck();
                            imgCont1 = Image.asset(player);
                            pictures.add(1);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[0][0] = 1;
                            } else {
                              winnerPattern[0][0] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2),
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(2)) {
                          setState(() {
                            statusCheck();
                            imgCont2 = Image.asset(player);
                            pictures.add(2);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[0][1] = 1;
                            } else {
                              winnerPattern[0][1] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2),
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont2,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(3)) {
                          setState(() {
                            statusCheck();
                            imgCont3 = Image.asset(player);
                            pictures.add(3);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[0][2] = 1;
                            } else {
                              winnerPattern[0][2] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont3,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(4)) {
                          setState(() {
                            statusCheck();
                            imgCont4 = Image.asset(player);
                            pictures.add(4);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[1][0] = 1;
                            } else {
                              winnerPattern[1][0] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2),
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont4,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(5)) {
                          setState(() {
                            statusCheck();
                            imgCont5 = Image.asset(player);
                            pictures.add(5);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[1][1] = 1;
                            } else {
                              winnerPattern[1][1] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2),
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(6)) {
                          setState(() {
                            statusCheck();
                            imgCont6 = Image.asset(player);
                            pictures.add(6);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[1][2] = 1;
                            } else {
                              winnerPattern[1][2] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(7)) {
                          setState(() {
                            statusCheck();
                            imgCont7 = Image.asset(player);
                            pictures.add(7);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[2][0] = 1;
                            } else {
                              winnerPattern[2][0] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont7,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(8)) {
                          setState(() {
                            statusCheck();
                            imgCont8 = Image.asset(player);
                            pictures.add(8);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[2][1] = 1;
                            } else {
                              winnerPattern[2][1] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: Color(0xffC5C5C5), width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont8,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!pictures.contains(9)) {
                          setState(() {
                            statusCheck();
                            imgCont9 = Image.asset(player);
                            pictures.add(9);
                            if (player == 'images/gamecircle.png') {
                              winnerPattern[2][2] = 1;
                            } else {
                              winnerPattern[2][2] = 2;
                            }
                            matchWinner();
                          });
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.white, width: 2))),
                        width: 120,
                        height: 120,
                        child: imgCont9,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (winCont) winningContainer()
          ]),

/////////////////////////// GAME GRID ENDS ////////////////////////////////
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => LeaderBoard(
                            winnerRecords: winnerRecords,
                          )));
                },
                child: Container(
                    padding: const EdgeInsets.only(left: 24),
                    margin: const EdgeInsets.only(left: 23, bottom: 43),
                    height: 62,
                    width: 218,
                    decoration: BoxDecoration(
                      color: const Color(0xff0D47A1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Image.asset('images/leadboard.png'),
                        const Padding(
                          padding: EdgeInsets.only(left: 17),
                          child: Text(
                            'Leader board',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    )),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 28, bottom: 45),
                child: GestureDetector(
                  onTap: () {
                    reset();
                  },
                  child: Image.asset(
                    'images/reload.png',
                    height: 40.7,
                    width: 38.3,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  statusCheck() {
    if (player == 'images/gamecircle.png') {
      player = 'images/bluevector.png';
      playerTurn = "Player 1's Turn";
      playerTurnColor = const Color(0xff42A5F5);
    } else {
      player = 'images/gamecircle.png';
      playerTurn = "Player 2's Turn";
      playerTurnColor = const Color(0xff0D47A1);
    }
  }

  matchWinner() {
    int firstGrid = winnerPattern[0][0];
    int secondGrid = winnerPattern[0][1];
    int thirdGrid = winnerPattern[0][2];
    int fourthGrid = winnerPattern[1][0];
    int fifthGrid = winnerPattern[1][1];
    int sixthGrid = winnerPattern[1][2];
    int seventhGrid = winnerPattern[2][0];
    int eighthGrid = winnerPattern[2][1];
    int ninthGrid = winnerPattern[2][2];
    if ((firstGrid == 1 && secondGrid == 1 && thirdGrid == 1) ||
        (fourthGrid == 1 && fifthGrid == 1 && sixthGrid == 1) ||
        (seventhGrid == 1 && eighthGrid == 1 && ninthGrid == 1) ||
        (firstGrid == 1 && fourthGrid == 1 && seventhGrid == 1) ||
        (secondGrid == 1 && fifthGrid == 1 && eighthGrid == 1) ||
        (thirdGrid == 1 && sixthGrid == 1 && ninthGrid == 1) ||
        (firstGrid == 1 && fifthGrid == 1 && ninthGrid == 1) ||
        (thirdGrid == 1 && fifthGrid == 1 && seventhGrid == 1)) {
      winnerRecords.add('Player 1');
      winCont = true;
    } else if ((firstGrid == 2 && secondGrid == 2 && thirdGrid == 2) ||
        (fourthGrid == 2 && fifthGrid == 2 && sixthGrid == 2) ||
        (seventhGrid == 2 && eighthGrid == 2 && ninthGrid == 2) ||
        (firstGrid == 2 && fourthGrid == 2 && seventhGrid == 2) ||
        (secondGrid == 2 && fifthGrid == 2 && eighthGrid == 2) ||
        (thirdGrid == 2 && sixthGrid == 2 && ninthGrid == 2) ||
        (firstGrid == 2 && fifthGrid == 2 && ninthGrid == 2) ||
        (thirdGrid == 2 && fifthGrid == 2 && seventhGrid == 2)) {
      winnerRecords.add('Player 2');
      winCont = true;
    } else if (pictures.length == 9) {
      winnerRecords.add('Drawn');
      winCont = true;
    }
  }

  winningContainer() {
    if (winnerRecords.last == 'Drawn') {
      return WinningScreen(
        player: 'Game',
        status: winnerRecords.last,
        colors: Colors.lightBlue,
      );
    } else {
      return WinningScreen(player: winnerRecords.last);
    }
  }

  reset() {
    setState(() {
      winnerPattern = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ];
      imgCont1 = null;
      imgCont2 = null;
      imgCont3 = null;
      imgCont4 = null;
      imgCont5 = null;
      imgCont6 = null;
      imgCont7 = null;
      imgCont8 = null;
      imgCont9 = null;
      winCont = false;
      pictures = [];
      player = '';
      playerTurn = "Player 1's Turn";
      playerTurnColor = const Color(0xff42A5F5);
      winCont = false;
    });
  }
}
