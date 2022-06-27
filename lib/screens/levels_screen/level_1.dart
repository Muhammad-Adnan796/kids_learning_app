import 'package:flutter/material.dart';
import 'package:kids_learning_app/all_data/Level_1/english1_screen/main_english1.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1_modal.dart';


class Level1 extends StatefulWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  static List level1NameList = [
    "ENGLISH",
    "MATHES",
    "GENERAL KNOWLEDGE",
    "ISLAMIAT",
    "SCIENCE",
    "QUIZ",
  ];
  static List level1PicList = [
    "images/all_level_1_pics/english_pic_1.png",
    "images/all_level_1_pics/mathes_pic_1.png",
    "images/all_level_1_pics/general_knowledge_pic_1.png",
    "images/all_level_1_pics/islamiat_pic_1.png",
    "images/all_level_1_pics/science_pic_1.png",
    "images/all_level_1_pics/quiz_pic_1.png",
  ];

  final List levels1Data = List.generate(
      level1NameList.length,
          (index) => LevelDataModal(
        name: level1NameList[index],
        image: level1PicList[index],
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
            "Level 1",
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
                          MaterialPageRoute(builder: (context) => English()),
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
                                        levels1Data[0].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[0].toString(),
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
                                        levels1Data[1].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[1].toString(),
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
                                        levels1Data[2].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[2].toString(),
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
                                        levels1Data[3].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[3].toString(),
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
                                        levels1Data[4].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[4].toString(),
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
                                        levels1Data[5].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
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
                                    level1NameList[5].toString(),
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
