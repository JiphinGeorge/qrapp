import 'package:flutter/material.dart';
import 'package:qrapp/login.dart';
import 'package:qrapp/widgets/customfield.dart';

class Registraion extends StatefulWidget {
  const Registraion({super.key});

  @override
  State<Registraion> createState() => _RegistraionState();
}

class _RegistraionState extends State<Registraion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
          leading: IconButton(
              onPressed: (() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login(),));
              }), icon: const Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          backgroundColor: Colors.indigo,
        centerTitle: true,
        title:const Text(
          'Registraion',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomField(
            hintext: 'Enter Your Name',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter your Roll Number',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter Your Email',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter your Password',
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12)),
            child: TextButton(
              onPressed: (() {}),
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
