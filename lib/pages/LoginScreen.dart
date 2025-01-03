import 'package:bustraker/pages/BusStopsScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  final bool isDriver;

  const Loginscreen({super.key, required this.isDriver});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Center(
                      child: Image.asset(
                          width: 350, height: 350, "assets/oval.png")),
                  Container(
                    width: 350,
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              width: 110, height: 110, "assets/logo.png"),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "SMART BUS",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: size.width * 0.8,
                // height: size.height * 0.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, bottom: 40, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.isDriver ? "Driver Login" : "Parent Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.isDriver ? "Driver ID" : "Parent ID",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      TextField(
                        decoration: InputDecoration(
                          hintText: widget.isDriver ? "Driver ID" : "Parent ID",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.grey.shade50,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent, // Transparent border
                              width: 2.0, // Border width
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .transparent, // Transparent border when not focused
                              width: 2.0, // Border width
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .transparent, // Transparent border when focused
                              width: 2.0, // Border width
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.grey.shade50,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent, // Transparent border
                              width: 2.0, // Border width
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .transparent, // Transparent border when not focused
                              width: 2.0, // Border width
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .transparent, // Transparent border when focused
                              width: 2.0, // Border width
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
                                  builder: (context) => BusStopsScreen()))
                        },
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Center(
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
