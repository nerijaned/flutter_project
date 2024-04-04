import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    List<String> imageList = [
      'assets/images/images1.jpg',
      'assets/images/images2.jpg',
      'assets/images/images3.jpg',
      'assets/images/images4.jpg',
      'assets/images/images5.jpg',
      'assets/images/images6.jpg'
    ];

    List <String> imageTitle = [
      'Lavenders',
      'Daisies',
      'Roses',
      'Sunflowers',
      'Tulips',
      'Lilies'
    ];

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    List<Widget> gridStuff = List.generate(6,(index) {
      return Container(
        width: Width,
        height: Height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(imageList[index]),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(imageTitle[index], style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(5, 5),
              )
            ]
          ),),
        ),
      );
    });


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
      body: 
      Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 163, 213),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            mainAxisExtent: 240,
            ),
            itemCount: gridStuff.length,
            itemBuilder: (BuildContext context, int index){
              return Column(
                children: [
                  Container(height: 240, child: gridStuff[index]),
                ],
              );
            }),
      ),


      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const [
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