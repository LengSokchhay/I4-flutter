import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomStatusBar(), // Add CustomStatusBar at the top
              SizedBox(height: 40), // Space after the status bar
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Let's get you started!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "By continuing, you confirm you’ve read and agree to our "
                        "Terms of Service and Privacy Policy on how we collect, "
                        "use, disclose, and process your personal data.",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle the next button press
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 16),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 44,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('9:41', style: TextStyle(fontSize: 16, color: Colors.black)),
          Row(
            children: [
              Icon(Icons.signal_cellular_alt, size: 16, color: Colors.black),
              SizedBox(width: 4),
              Icon(Icons.wifi, size: 16, color: Colors.black),
              SizedBox(width: 4),
              Transform.rotate(
                angle: 90 * 3.1415926535897932 / 180,
                child: Icon(Icons.battery_full, size: 16, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
