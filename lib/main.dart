import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kid Learning App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


// Fluttertoast.showToast(
// msg: "This is Center Short Toast",
// toastLength: Toast.LENGTH_SHORT,
// gravity: ToastGravity.CENTER,
// timeInSecForIosWeb: 1,
// backgroundColor: Colors.red,
// textColor: Colors.white,
// fontSize: 16.0
// );