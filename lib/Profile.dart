import 'package:final_project/HomePage1.dart';
import 'package:final_project/Verify_email.dart';
import 'package:flutter/material.dart';
import 'ProfileName.dart';
import 'ProfileEmail.dart';
import 'ProfileNumber.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileField(
              label: 'Name',
              value: 'Choeng Kimlay',
              isVerified: false,
              onEditPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileName()),
                );
              },
            ),
            SizedBox(height: 16.0),
            ProfileField(
              label: 'Email',
              value: 'mingfongmen@gmail.com',
              isVerified: false,
              hasButton: true,
              buttonBackgroundColor: Colors.blue,
              buttonTextColor: Colors.white,
              onEditPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileEmail()),
                );
              },
            ),
            SizedBox(height: 16.0),
            ProfileField(
              label: 'Mobile Number',
              value: 'mingfongmen@gmail.com',
              isVerified: true,
              onEditPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileNumber()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final bool isVerified;
  final bool hasButton;
  final Color? buttonBackgroundColor;
  final Color? buttonTextColor;
  final VoidCallback? onEditPressed; // New callback for edit button

  ProfileField({
    required this.label,
    required this.value,
    this.isVerified = false,
    this.hasButton = false,
    this.buttonBackgroundColor,
    this.buttonTextColor,
    this.onEditPressed, // Initialize the callback
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: onEditPressed, // Use the callback here
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              value,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            if (hasButton)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerifyEmailScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      buttonBackgroundColor ?? Colors.blue),
                  foregroundColor: MaterialStateProperty.all(
                      buttonTextColor ?? Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: const Text(
                  'Verify Email',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            if (isVerified)
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green,
                ),
                child: const Text(
                  'Verified',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
