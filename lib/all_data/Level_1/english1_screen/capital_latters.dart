import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CapitalLatters extends StatefulWidget {
  const CapitalLatters({Key? key}) : super(key: key);

  @override
  State<CapitalLatters> createState() => _CapitalLattersState();
}

class _CapitalLattersState extends State<CapitalLatters> {



  static List capitalLattersList = [
    "images/alphabate_pics/capital_latters/A.jpg",
    "images/alphabate_pics/capital_latters/B.jpg",
    "images/alphabate_pics/capital_latters/C.jpg",
    "images/alphabate_pics/capital_latters/D.jpg",
    "images/alphabate_pics/capital_latters/E.jpg",
    "images/alphabate_pics/capital_latters/F.png",
    "images/alphabate_pics/capital_latters/G.jpg",
    "images/alphabate_pics/capital_latters/H.jpg",
    "images/alphabate_pics/capital_latters/I.png",
    "images/alphabate_pics/capital_latters/J.png",
    "images/alphabate_pics/capital_latters/K.png",
    "images/alphabate_pics/capital_latters/L.jpg",
    "images/alphabate_pics/capital_latters/M.png",
    "images/alphabate_pics/capital_latters/N.jpg",
    "images/alphabate_pics/capital_latters/O.jpg",
    "images/alphabate_pics/capital_latters/P.jpg",
    "images/alphabate_pics/capital_latters/Q.jpg",
    "images/alphabate_pics/capital_latters/R.png",
    "images/alphabate_pics/capital_latters/S.jpg",
    "images/alphabate_pics/capital_latters/T.png",
    "images/alphabate_pics/capital_latters/U.jpg",
    "images/alphabate_pics/capital_latters/V.jpg",
    "images/alphabate_pics/capital_latters/W.png",
    "images/alphabate_pics/capital_latters/X.jpg",
    "images/alphabate_pics/capital_latters/Y.jpg",
    "images/alphabate_pics/capital_latters/Z.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width*0.4;
    double screenHeight = MediaQuery.of(context).size.width*0.5;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f39d),
        appBar: AppBar(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          elevation: 20,
          backgroundColor: Colors.amberAccent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.black,
              )),
          title: const Text(
            "Capital Latters",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[0].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[1].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[2].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[3].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[4].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[5].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[6].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[7].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[8].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[9].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[10].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[11].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[12].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[13].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[14].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[15].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[16].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[17].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[18].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[19].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[20].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[21].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[22].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[23].toString())),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width: screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[24].toString())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 5,right: 8,left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  color: Colors.white)
                            ],
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight,
                        width:  screenWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  capitalLattersList[25].toString())),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
