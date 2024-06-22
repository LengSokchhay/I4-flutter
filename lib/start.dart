import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

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
                      // Navigate to Sign Up screen
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
                      // Navigate to Log In screen
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
