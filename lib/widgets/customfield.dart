
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({
    super.key,
    required this.hintext
  });

  String? hintext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintext,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}
