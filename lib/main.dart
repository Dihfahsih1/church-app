import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Church App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Church App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the Church History screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChurchHistoryPage()),
                );
              },
              child: Text('Church History'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Daily Verses screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DailyVersesPage()),
                );
              },
              child: Text('Daily Verses'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Reminders screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemindersPage()),
                );
              },
              child: Text('Reminders'),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for Church History page
class ChurchHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Church History'),
      ),
      body: Center(
        child: Text('UCC Bwaise started as a small group of prayer cell in Nabweru'),
      ),
    );
  }
}

// Placeholder for Daily Verses page
class DailyVersesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Verses'),
      ),
      body: Center(
        child: Text('Pushing of daily notifications'),
      ),
    );
  }
}

// Placeholder for Reminders page
class RemindersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Center(
        child: Text('Reminders Content Goes Here'),
      ),
    );
  }
}
