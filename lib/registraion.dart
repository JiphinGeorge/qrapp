import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Registraion'),
      ),
      body: Column(
        children: [
          CustomField(
            hintext: 'Enter Your Name',
          ),
          SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter yor Roll Number',
          ),
          SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter Your Email',
          ),
          SizedBox(
            height: 20,
          ),
          CustomField(
            hintext: 'Enter your password',
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: (() {}), child: Text('REGISTER'))
        ],
      ),
    );
  }
}
