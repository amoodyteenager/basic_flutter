import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.orange,
                  child: Image.asset(
                    'assets/images/dualipa.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                    child: Image.asset('assets/images/jiyo.jpeg')),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.purple,
                  child: Image.asset(
                    'assets/images/sayang.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Image Gallery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 180,
                    child: Image.asset(
                      'assets/images/dualipa.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Dua Lipa',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 180,
                    child: Image.asset(
                      'assets/images/baby.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Jihyo',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
