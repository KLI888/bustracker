import 'dart:ui';
import 'dart:ui';

import 'package:bustraker/pages/AreYouOut.dart';
import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40), // Add your logo here
            SizedBox(width: 10),
            Text('SMART BUS'),
          ],
        ),
        centerTitle: false,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('assets/logo.png'), // Profile image path
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Purvesh Mali',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+91 1234567890',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                title: Text(
                  'Messages',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.contact_page,
                  color: Colors.white,
                ),
                title: Text(
                  'Contact',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Route Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            RouteStepWidget(
              icon: Icons.pin_drop,
              label: 'Pickup',
              location: 'Ganesh Colony',
              iconColor: Colors.yellow,
            ),
            Center(child: Icon(Icons.keyboard_arrow_down, size: 30)),
            RouteStepWidget(
              icon: Icons.location_on,
              label: 'Next Stop',
              location: 'Court Chowk',
              iconColor: Colors.blue,
            ),
            Center(child: Icon(Icons.keyboard_arrow_down, size: 30)),
            RouteStepWidget(
              icon: Icons.location_on,
              label: 'Next Stop',
              location: 'Gandhi Udyan',
              iconColor: Colors.blue,
            ),
            Center(child: Icon(Icons.keyboard_arrow_down, size: 30)),
            RouteStepWidget(
              icon: Icons.location_on,
              label: 'Destination',
              location: 'RADHA INT’L',
              iconColor: Colors.blue,
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AreYouOut()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Go Ahead >>',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteStepWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String location;
  final Color iconColor;

  const RouteStepWidget(
      {Key? key,
      required this.icon,
      required this.label,
      required this.location,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey[400],
              child: Text(
                'G',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
