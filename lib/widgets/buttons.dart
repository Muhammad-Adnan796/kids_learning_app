import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  CustomButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            shadowColor: MaterialStateProperty.all(Colors.grey),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade400)),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ));
  }
}


