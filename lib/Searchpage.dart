import 'package:final_project/HomePage1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Adjust the height as needed
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.blue),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue, // Text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Navigate to SearchPage
                );
              },
            ),
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 240, 240),
                  hintText: 'Search',
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            elevation: 0, // Set AppBar elevation to 0 to avoid double shadow
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Chip(
                  label: Text('coffee'),
                  onDeleted: () {},
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  deleteIconColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                Chip(
                  label: Text('amazon'),
                  onDeleted: () {},
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  deleteIconColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                // Add more Chip widgets as needed
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Popular Search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Chip(
                  label: Text('pizza'),
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                Chip(
                  label: Text('burger'),
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                Chip(
                  label: Text('kfc'),
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                Chip(
                  label: Text('dominos'),
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
                Chip(
                  label: Text('Milk'),
                  backgroundColor: Color.fromARGB(255, 240, 240, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Cuisines',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CuisineItem(
                      imagePath: 'lib/assets/pizza.png', label: 'Pizza'),
                  CuisineItem(
                      imagePath: 'lib/assets/burger.png', label: 'Fast Food'),
                  CuisineItem(
                      imagePath: 'lib/assets/fastfood.png', label: 'Bread'),
                  CuisineItem(
                      imagePath: 'lib/assets/salad.png', label: 'Salads'),
                  CuisineItem(
                      imagePath: 'lib/assets/bread.png', label: 'Burger'),
                  CuisineItem(imagePath: 'lib/assets/pizza.png', label: 'Milk'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CuisineItem extends StatelessWidget {
  final String imagePath;
  final String label;

  CuisineItem({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center align content
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4),
          Flexible(
            // Wrap text with Flexible to handle overflow
            child: Text(
              label,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center, // Center align text
              maxLines: 2, // Limit text to 2 lines
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
