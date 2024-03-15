import 'package:flutter/material.dart';
import 'package:qrapp/registraion.dart';
import 'package:qrapp/widgets/customfield.dart';
import 'package:qrapp/qrscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Padding(
            padding:  EdgeInsets.fromLTRB(0, 170, 0, 50),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
           const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter the Roll Number',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomField(hintext: 'Enter the Password'),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(12)),
            child: TextButton(
              onPressed: (() {
                setState(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const Scan();
                  }));
                });
              }),
              child: const Text(
                'login',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'dont have an account..?',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return  const Registraion();
                      }));
                    });
                  }),
                  child:const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
