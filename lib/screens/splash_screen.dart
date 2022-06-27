import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning_app/authscreens/login_screen.dart';
import 'package:kids_learning_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 240,
        splash: 'images/NewSplash.png',
        nextScreen: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return HomeScreen();
          }
          return LoginScreen();
        }),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color(0xFFf2ac49));
  }
}
