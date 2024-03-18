import 'package:flutter/material.dart';
import 'package:qrapp/registraion.dart';
import 'package:qrapp/widgets/customfield.dart';
import 'package:qrapp/qrscreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final roll= TextEditingController();
  final password = TextEditingController();
   void Loginn() async{

     Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
 var response = await http.post(uri,
         headers: <String, String>{
           'Content-Type': 'application/json; charset=UTF-8',
         },
         body: jsonEncode({
           'rollno': roll.text,
           'password': password.text,
         }));

     if (response.statusCode == 200) {
       var decodedata = jsonDecode(response.body);
       print(response.body);
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         content: Text("Sucessful"),
       ));
       Navigator.pushReplacement(
           context,
           MaterialPageRoute(
             builder: (context) =>Scan(rollno:decodedata["rollno"] ,) ,
           ));
     }
     else{
       var decodedata = jsonDecode(response.body);
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         content: Text(
           decodedata["Login failed"]),
         behavior: SnackBarBehavior.floating,
       ));
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 170, 0, 50),
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
            controllerr: roll,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomField(hintext: 'Enter the Password'
          ,controllerr: password,),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(12)),
            child: TextButton(
              onPressed: (() {
                Loginn();
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
                        return const Registraion();
                      }));
                    });
                  }),
                  child: const Text(
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
