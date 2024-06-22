import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NameInputScreen(),
    );
  }
}

class NameInputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            // Handle back button press
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
