

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,super.key});
  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: Theme.of(context).primaryColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child:  Text(text,      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
    );
  }
}
