import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilee extends StatefulWidget {
  const Profilee({super.key});

  @override
  State<Profilee> createState() => _ProfileeState();
}

class _ProfileeState extends State<Profilee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  CircleAvatar(
                   // backgroundImage: AssetImage(),
              radius: 65,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Jiphin George',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            const  Text('FLUTTER DEVLOPER',
                style: TextStyle(fontSize: 23,letterSpacing:10, )),
            const  SizedBox(height: 65,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(23)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: (() {}),
                        icon:const Icon(
                          Icons.phone,
                          color: Colors.indigo,
                        )),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(23)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.mail,
                          color: Colors.indigo,
                        )),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
