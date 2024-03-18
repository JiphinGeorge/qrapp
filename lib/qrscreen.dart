import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:qrapp/scan.dart';
import 'login.dart';

class Scan extends StatefulWidget {
   Scan({super.key,required this.rollno});

  String rollno;

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
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
      ),
      body: Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 135),
              child: GradientIcon(
                icon: Icons.account_circle,
                gradient:
                    LinearGradient(colors: [Colors.white70, Colors.blueAccent]),
                size: 130,
              )),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.white,
            child: QrImageView(
              data: widget.rollno,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(13)),
            child: TextButton(
              onPressed: (() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scancam(),
                    ));
              }),
              child: const Text(
                'Scan',
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
            ),
          )
        ],
      ),
    );
  }
}
