import 'package:final_project/login_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // CustomStatusBar(),
              Spacer(flex: 2),
              Text(
                'FOODIE',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 36, vertical: 16)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.black12),
                      )),
                    ),
                    child: Text('Sign Up'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 36, vertical: 16)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                    ),
                    child: Text('Log In'),
                  ),
                ],
              ),
              Spacer(),
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
                  child:
                      Icon(Icons.battery_full, size: 16, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
