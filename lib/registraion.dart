import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:qrapp/login.dart';
import 'package:qrapp/widgets/customfield.dart';
import 'package:http/http.dart' as http;

class Registraion extends StatefulWidget {
  const Registraion({super.key});

  @override
  State<Registraion> createState() => _RegistraionState();
}

class _RegistraionState extends State<Registraion> {
  final name_controllor = TextEditingController();
  final roll_controllor = TextEditingController();
  final email_controllor = TextEditingController();
  final password_controllor = TextEditingController();
  void Registraionn() async {
    // print(name_controllor.text);
    // print(roll_controllor.text);
    // print(email_controllor.text);
    // print(password_controllor.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'name': name_controllor.text,
          'email': email_controllor.text,
          'rollno': roll_controllor.text,
          'password': password_controllor.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(data["message"]),
      ));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          data["message"],
        ),
        behavior: SnackBarBehavior.floating,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            }),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          'Registraion',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomField(
            hintext: 'Enter Your Name',
            controllerr: name_controllor,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter your Roll Number',
            controllerr: roll_controllor,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter Your Email',
            controllerr: email_controllor,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter your Password',
            controllerr: password_controllor,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: TextButton(
              onPressed: (() {
                Registraionn();
              }),
              child: const Text(
                'REGISTER',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
