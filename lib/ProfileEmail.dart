import 'package:final_project/Profile.dart';
import 'package:final_project/Verify_email.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileEmail(),
    );
  }
}

class ProfileEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        title: Text('Email'), // Changed title to 'Email'
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Handle check button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email', // Changed labelText to 'Email'
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerifyEmailScreen()),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(
                      Colors.white), // Background color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
