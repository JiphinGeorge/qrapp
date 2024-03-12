import 'package:flutter/material.dart';
import 'package:qrapp/widgets/customfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomField(hintext: 'Enter the Roll Number',),
          SizedBox(
            height: 20,
          ),
         CustomField(hintext: 'Enter the Password'),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (() {}),
            child: Text('login'),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          )
        ],
      ),
    );
  }
}
