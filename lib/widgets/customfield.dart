import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({super.key, required this.hintext});

  String? hintext;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          gradient:
             const  LinearGradient(colors: [Colors.deepPurpleAccent, Colors.black]),
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(23), bottomRight: Radius.circular(23)),
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: hintext,
            labelStyle: const TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
