import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home Page',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
              onPressed: null,
              child: Icon(Icons.notification_add, color: Colors.white),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      drawer: Drawer(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            scale: 0.1,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home'),
      ]),
    );
  }
}