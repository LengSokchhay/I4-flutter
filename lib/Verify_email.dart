import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class VerifyEmailScreen extends StatefulWidget {
  @override
  _VerifyEmailScreenState createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  // bool _isButtonDisabled = false;

  // void _sendCodeAgain() {
  //   setState(() {
  //     _isButtonDisabled = true;
  //   });

  //   Future.delayed(Duration(seconds: 60), () {
  //     setState(() {
  //       _isButtonDisabled = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
              'Verify your email\naddress to get started',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
                'This helps us mitigate fraud\nand keep your personal data safe'),
            Spacer(), // Spacer to push content to the top
            GestureDetector(
              // onTap: _isButtonDisabled ? null : _sendCodeAgain,
              child: Container(
                width: double.infinity, // Full width
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Send Verification Email',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
