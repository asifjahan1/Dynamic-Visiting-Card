// Import necessary packages at the top of your Dart file
// ignore_for_file: deprecated_member_use, duplicate_ignore

//import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*
  QrImage generateQRCode() {
    final qrData = {
      'name': 'Md. Asif Jahan',
      'occupation': 'Flutter Developer',
      'phone': '+8801874392463',
      'email': '3332asif1@juniv.edu',
      'address': '1/2 Larmini Street, Wari',
    };

    final qrString = jsonEncode(qrData);

    return QrImage(
      data: qrString,
      version: QrVersions.auto,
      size: 200.0,
    );
  }
  */

  void _launchPhone() async {
    const phoneNumber = '+8801874392463';
    const phoneUrl = 'tel:$phoneNumber';
    try {
      await launch(phoneUrl);
    } catch (e) {
      if (kDebugMode) {
        print('Error launching phone: $e');
      }
      // Handle the error gracefully, such as showing a dialog to the user.
    }
  }

  // Function to launch the email app
  // ignore: duplicate_ignore
  void _launchEmail() async {
    const email = '3332asif1@juniv.edu';
    const emailUrl = 'mailto:$email';
    // ignore: deprecated_member_use
    try {
      // ignore: deprecated_member_use
      await launch(emailUrl);
    } catch (e) {
      if (kDebugMode) {
        print('Error launching email: $e');
      }
      // Handle the error gracefully, such as showing a dialog to the user.
    }
  }

  void _launchLocation() async {
    const latitude = 23.7153637;
    const longitude = 90.417755;
    const googleMapsUrl = 'https://www.google.com/maps?q=$latitude,$longitude';

    try {
      await launch(googleMapsUrl);
    } catch (e) {
      if (kDebugMode) {
        print('Error launching map: $e');
      }
      // Handle the error gracefully, such as showing a dialog to the user.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 25.0, right: 25.0),
            child: Container(
              alignment: Alignment.topCenter,
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('image/me.jpg'),
                  ),
                  Text(
                    'Md. Asif Jahan',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 30,
                      letterSpacing: 2.5,
                    ),
                  ),
                  const Divider(
                    height: 5.0,
                    indent: 50.0,
                    endIndent: 50.0,
                    thickness: 2.0,
                    color: Colors.lightGreenAccent,
                  ),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 25.0, right: 25.0),
            child: Container(
              height: 330,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: _launchPhone,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        margin: const EdgeInsets.all(1.0),
                        height: 50,
                        child: const Card(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 25,
                                color: Colors.white,
                              ),
                              Text(
                                '+8801874392463',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: _launchEmail,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        margin: const EdgeInsets.all(1.0),
                        height: 50,
                        child: const Card(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.email,
                                size: 25,
                                color: Colors.white,
                              ),
                              Text(
                                '3332asif1@juniv.edu',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: _launchLocation,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        margin: const EdgeInsets.all(1.0),
                        height: 50,
                        child: const Card(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 25,
                                color: Colors.white,
                              ),
                              Text(
                                '1/2 Larmini Street, Wari',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, left: 10.0, right: 10.0),
                    child: Container(
                      // Add the QR code here
                      child: generateQRCode(),
                    ),
                  ),
                  */
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
