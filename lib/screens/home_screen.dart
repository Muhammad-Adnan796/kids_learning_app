import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kids_learning_app/screens/home_modal.dart';
import 'package:kids_learning_app/screens/levels_screen/level_1.dart';
import 'package:kids_learning_app/screens/levels_screen/level_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  static List levelNameList = [
    "Level 1",
    "Level 2",
    "Level 3",
    "Feedback",
    "About",
    "Settings",
  ];
  static List levelPicList = [
    "images/levels_pics/level_1_pic.jpg",
    "images/levels_pics/level_2_pic.png",
    "images/levels_pics/level_3_pic.png",
    "images/levels_pics/feedback_pic.png",
    "images/levels_pics/about_pic.png",
    "images/levels_pics/setting_pic.png",
  ];

  final List levelsData = List.generate(
      levelNameList.length,
      (index) => HomeDataModal(
            name: levelNameList[index],
            image: levelPicList[index],
          ));

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
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.barsStaggered,
                  size: 30,
                  color: Colors.black,
                )),
            title: const Text(
              "Learn",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    borderRadius: BorderRadius.circular(15),
                    menuMaxHeight: 60,
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 40,
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Container(
                          decoration: new BoxDecoration(color: Colors.amber),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.logout,
                                size: 35,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        value: 'logout',
                      ),
                    ],
                    onChanged: (itemIdentifier) {
                      if (itemIdentifier == 'logout') {
                        _signOut();
                      }
                    }),
              )
            ],
          ),
          body: Container(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 10, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[0].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[0].toString(),
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
                          MaterialPageRoute(builder: (context) => Level2()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[1].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -3,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[1].toString(),
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 10, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[2].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[2].toString(),
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
                          MaterialPageRoute(builder: (context) => Level2()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[3].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -3,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[3].toString(),
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 10, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[4].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[4].toString(),
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
                          MaterialPageRoute(builder: (context) => Level2()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        levelsData[5].image.toString())),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -3,
                            top: 160,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Card(
                                color: Colors.amberAccent,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    levelNameList[5].toString(),
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
          ),
        ),
      ),
    );
  }
}
