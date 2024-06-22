import 'package:final_project/Signup.dart';
import 'package:final_project/login_page.dart';
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
      home: VerifyMobileNumberScreen(),
    );
  }
}

class VerifyMobileNumberScreen extends StatefulWidget {
  @override
  _VerifyMobileNumberScreenState createState() =>
      _VerifyMobileNumberScreenState();
}

class _VerifyMobileNumberScreenState extends State<VerifyMobileNumberScreen> {
  List<TextEditingController> _codeControllers =
      List.generate(4, (index) => TextEditingController());
  bool _isButtonDisabled = false;

  void _sendCodeAgain() {
    setState(() {
      _isButtonDisabled = true;
    });

    Future.delayed(Duration(seconds: 60), () {
      setState(() {
        _isButtonDisabled = false;
      });
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );
  }

  @override
  void dispose() {
    for (var controller in _codeControllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
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
              'Verify your mobile number',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Enter 4-digit code sent to your mobile number +85598787839'),
            SizedBox(height: 16),
            Container(
              width: 450, // Fixed width for the Row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(4, (index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: TextField(
                          controller: _codeControllers[index],
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                      if (index < 3)
                        SizedBox(
                            width:
                                20), // Add gap except after the last TextField
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isButtonDisabled ? null : _sendCodeAgain,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: Text('Send code again'),
            ),
            SizedBox(height: 16),
            _isButtonDisabled
                ? Text(
                    'Try again in 60 seconds',
                    style: TextStyle(color: Colors.black),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
