import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  
  final String text;
  final VoidCallback onPressed;
  MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: MaterialButton(
          onPressed: onPressed,
          color: Colors.yellow,
          child: Text(text),
        ));
  }
}
