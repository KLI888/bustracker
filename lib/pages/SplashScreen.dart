import 'dart:async';
import 'package:bustraker/pages/LoginScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      // Replace this with your navigation logic
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ProccedUserScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Blue background
          Container(
            color: const Color(0xFF2196F3), // Blue background color
          ),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                Image.asset(
                  'assets/oval.png',
                  width: 800,
                  height: 800,
                  fit: BoxFit.contain,
                ),
                // Text
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Apply the same borderRadius
                  child: Image.asset(
                    'assets/logo.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SMART BUS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
                // Text
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Example Home Page for navigation

class ProccedUserScreen extends StatefulWidget {
  @override
  State<ProccedUserScreen> createState() => _ProccedUserScreenState();
}

class _ProccedUserScreenState extends State<ProccedUserScreen> {
  bool isDriver = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Who are You ?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isDriver = true; // Update the state on tap
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: isDriver ? Color(0xFFBFE5F8) : Colors.transparent,
                  border: Border.all(
                    color: isDriver
                        ? Colors.transparent
                        : Colors.white, // Border color based on isDriver
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0), // Border radius
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Bus Driver',
                      style: TextStyle(
                          color: isDriver ? Colors.black : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isDriver = !isDriver; // Update the state on tap
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: !isDriver ? Color(0xFFBFE5F8) : Colors.transparent,
                  border: Border.all(
                    color: !isDriver
                        ? Colors.transparent
                        : Colors.white, // Border color based on isDriver
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0), // Border radius
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Parent',
                      style: TextStyle(
                          color: !isDriver ? Colors.black : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Loginscreen(
                              isDriver: isDriver,
                            )))
              },
              child: Container(
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xFFE7B224), // Background color
                  // border: Border.all(
                  //   color: Colors.white, // Border color
                  //   width: 2.0, // Border width
                  // ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0), // Border radius
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                      child: Text(
                    'Proceed>>',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
