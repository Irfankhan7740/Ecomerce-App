import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Initial index

  void _incrementIndex() {
    setState(() {
      _currentIndex++; // Increment index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(

                backgroundColor: Colors.white,
                child:  Image.network('https://media.gettyimages.com/id/180072181/photo/irrfan-khan-at-the-lunchbox-premiere.jpg?s=594x594&w=gi&k=20&c=pqhnx0vPbhcuhF_UYKr9OZkbgflIoFB3GkZb0F-tkkQ=',fit: BoxFit.fitHeight,)
                ,
              ),
              ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add functionality for when Home is tapped
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add functionality for when Settings is tapped
                Navigator.pop(context); // Close the drawer
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Add functionality for when Logout is tapped
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Tap to Increment Index'),
      ),
      body: GestureDetector(
        onTap: () {
          _incrementIndex(); // Call _incrementIndex() when tapped
        },
        child: Center(
          child: Text(
            'Current Index: $_currentIndex',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
