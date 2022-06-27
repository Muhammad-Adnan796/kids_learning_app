import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SmallLatters extends StatefulWidget {
  const SmallLatters({Key? key}) : super(key: key);

  @override
  State<SmallLatters> createState() => _SmallLattersState();
}

class _SmallLattersState extends State<SmallLatters> {
  static List smallLattersList = [
    "images/alphabate_pics/small_latters/a.jpg",
    "images/alphabate_pics/small_latters/b.png",
    "images/alphabate_pics/small_latters/c.png",
    "images/alphabate_pics/small_latters/d.png",
    "images/alphabate_pics/small_latters/e.png",
    "images/alphabate_pics/small_latters/f.png",
    "images/alphabate_pics/small_latters/g.png",
    "images/alphabate_pics/small_latters/h.jpg",
    "images/alphabate_pics/small_latters/i.png",
    "images/alphabate_pics/small_latters/j.png",
    "images/alphabate_pics/small_latters/k.jpg",
    "images/alphabate_pics/small_latters/l.png",
    "images/alphabate_pics/small_latters/m.png",
    "images/alphabate_pics/small_latters/n.jpg",
    "images/alphabate_pics/small_latters/o.png",
    "images/alphabate_pics/small_latters/p.png",
    "images/alphabate_pics/small_latters/q.png",
    "images/alphabate_pics/small_latters/r.jpg",
    "images/alphabate_pics/small_latters/s.png",
    "images/alphabate_pics/small_latters/t.png",
    "images/alphabate_pics/small_latters/u.png",
    "images/alphabate_pics/small_latters/v.png",
    "images/alphabate_pics/small_latters/w.png",
    "images/alphabate_pics/small_latters/x.png",
    "images/alphabate_pics/small_latters/y.png",
    "images/alphabate_pics/small_latters/z.png",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: SafeArea(
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
              "Small Latters",
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[0].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[1].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[2].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[3].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[4].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[5].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[6].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[7].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[8].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[9].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[10].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[11].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[12].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[13].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[14].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[15].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[16].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[17].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[18].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[19].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[20].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[21].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[22].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[23].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[24].toString())),
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
                                    color: Colors.grey)
                              ],
                              color: Colors.yellow.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    smallLattersList[25].toString())),
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
      ),
    );
  }
}
