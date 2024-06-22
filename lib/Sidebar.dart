import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SideBar(),
    );
  }
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sidebar'),
      ),
      drawer: SizedBox(
        width: 400,
        child: Drawer(
          child: Container(
            color: Colors.white,
            height: 873,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Choeng Kimlay"),
                  accountEmail: null,
                  currentAccountPicture: CircleAvatar(
                    child: Text("C"),
                  ),
                  decoration: BoxDecoration(
                    color:
                        Colors.blue, // Set your desired background color here
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_offer, color: Colors.blue),
                  title: Text('Vouchers & offers'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.reorder, color: Colors.blue),
                  title: Text('Orders & reordering'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text('View Profile'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.blue),
                  title: Text('Addresses'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.blue),
                  title: Text('Help Center'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                Divider(
                  thickness: 0.5, // Set the thickness of the divider
                  color: Colors.grey, // Set the color of the divider
                  height: 0, // Set the height of the divider
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  title: Text('Terms & Conditions / Privacy'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
                ListTile(
                  title: Text('Log out'),
                  onTap: () {
                    // Handle the action here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Sidebar from Home Page'),
      ),
    );
  }
}
