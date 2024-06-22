import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Verification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VerifyEmailScreen(),
    );
  }
}

class VerifyEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue, // Text color
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We’ve sent a verification link to\nmingfongmen@gmail.com',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text('Please click the verification link in your inbox'),
            Spacer(), // Spacer to push content to the top
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2), // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Handle send verification email action
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Check Inbox',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 8), // Add some space between buttons
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2), // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Handle cancel action
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                            color: Colors.blue, width: 1.5), // Border side
                      ),
                    ),
                    child: Text(
                      'Resend Verification Email',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
