import 'package:flutter/material.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1_modal.dart';

class Level3 extends StatefulWidget {
  const Level3({Key? key}) : super(key: key);

  @override
  State<Level3> createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  static List level3NameList = [
    "ENGLISH",
    "MATHES",
    "GENERAL KNOWLEDGE",
    "ISLAMIAT",
    "SCIENCE",
    "QUIZ",
  ];
  static List level3PicList = [
    "images/all_level_1_pics/english_pic_1.png",
    "images/all_level_1_pics/mathes_pic_1.png",
    "images/all_level_1_pics/general_knowledge_pic_1.png",
    "images/all_level_1_pics/islamiat_pic_1.png",
    "images/all_level_1_pics/science_pic_1.png",
    "images/all_level_1_pics/quiz_pic_1.png",
  ];

  final List levels3Data = List.generate(
      level3NameList.length,
          (index) => LevelDataModal(
        name: level3NameList[index],
        image: level3PicList[index],
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
            "Level 3",
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
                                        levels3Data[0].image.toString())),
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
                                    level3NameList[0].toString(),
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
                                        levels3Data[1].image.toString())),
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
                                    level3NameList[1].toString(),
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
                                        levels3Data[2].image.toString())),
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
                                    level3NameList[2].toString(),
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
                                        levels3Data[3].image.toString())),
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
                                    level3NameList[3].toString(),
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
                                        levels3Data[4].image.toString())),
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
                                    level3NameList[4].toString(),
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
                                        levels3Data[5].image.toString())),
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
                                    level3NameList[5].toString(),
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
