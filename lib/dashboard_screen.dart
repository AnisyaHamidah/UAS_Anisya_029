import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstMenuScreen(),
                  ),
                );
              },
              child: Text('Menu Pertama'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second menu page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondMenuScreen(),
                  ),
                );
              },
              child: Text('Menu kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
class FirstMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Pertama'),
      ),
      body: Center(
        child: Text('Ini tampilan menu pertama.'),
      ),
    );
  }
}
class SecondMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Kedua'),
      ),
      body: Center(
        child: Text('Ini tampilan menu kedua.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashboardScreen(),
  ));
}
