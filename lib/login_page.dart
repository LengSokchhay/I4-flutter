import 'package:flutter/material.dart';
import 'Signup.dart';
import 'landing_page.dart';
import 'Verify_code.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CustomStatusBar(), // Add the CustomStatusBar here
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What's your mobile number?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_Cambodia.svg/320px-Flag_of_Cambodia.svg.png',
                                  width: 24,
                                ),
                                SizedBox(width: 8),
                                Text('+855'),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Mobile Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VerifyMobileNumberScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
                angle: 90 * 3.1415926535897932 / 180, // 90 degrees to radians
                child: Icon(Icons.battery_full, size: 16, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
