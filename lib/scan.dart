import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrapp/qrscreen.dart';

class Scancam extends StatefulWidget {
  const Scancam({super.key});

  @override
  State<Scancam> createState() => _ScancamState();
}

class _ScancamState extends State<Scancam> {
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
                    builder: (context) => const Scan(),
                  ));
            }),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: MobileScanner(
              allowDuplicates: false,
              onDetect: (barcode, args) {
                print(barcode.rawValue!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
