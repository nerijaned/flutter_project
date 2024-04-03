import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> imageList = [
    Image.asset('assets/images/images1.jpg'),
    Image.asset('assets/images/images2.jpg'),
    Image.asset('assets/images/images3.jpg'),
    Image.asset('assets/images/images4.jpg'),
    Image.asset('assets/images/images5.jpg'),
    Image.asset('assets/images/images6.jpg')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 163, 213),
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
      drawer: const Drawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children:List.generate(6, (index) => 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageList[index],
          ],
        ))),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 163, 213),
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 163, 213),
            icon: Icon(Icons.search),
            label: 'Search'),
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 163, 213),
            icon: Icon(Icons.settings),
            label: 'Search'),
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 163, 213),
            icon: Icon(Icons.person),
            label: 'Profile'),
      ]),
    );
  }
}