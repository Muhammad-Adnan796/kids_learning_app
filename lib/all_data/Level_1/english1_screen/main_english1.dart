import 'package:flutter/material.dart';
import 'package:kids_learning_app/all_data/Level_1/english1_screen/capital_latters.dart';
import 'package:kids_learning_app/all_data/Level_1/english1_screen/small_latters.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1_modal.dart';



class English extends StatefulWidget {
  const English({Key? key}) : super(key: key);

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  static List englishlattersname = [
    "CAPITAL LATTER'S",
    "SMALL LATTERS",
    "ALPHABETS AND OBJECTS",

  ];
  static List englishlatterspic = [
    "images/english_title/capital_title.jpg",
    "images/english_title/small_title.jpg",
    "images/english_title/alphabats_objects_title.jpg",
  ];

  final List englishlatter = List.generate(
      englishlattersname.length,
          (index) => LevelDataModal(
        name: englishlattersname[index],
        image: englishlatterspic[index],
      ));

  @override
  Widget build(BuildContext context) {
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
            "English",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          actions: [
            InkWell(
                onTap: () {},
                child: Image(
                    image:
                    AssetImage("images/all_apbar_pics/capital_appbar.png")))
          ],
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CapitalLatters()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.4,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        englishlatter[0].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 210,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    englishlattersname[0].toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SmallLatters()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.4,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        englishlatter[1].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 210,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    englishlattersname[1].toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Level1()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.4,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        englishlatter[2].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 211,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    englishlattersname[2].toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
