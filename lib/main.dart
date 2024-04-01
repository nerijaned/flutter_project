import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 142, 197, 221)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image:AssetImage("assets/images/image.jpg")),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left:28.0),
                  child: Text('Ponyo by Studio Ghibli', style: TextStyle(color: Colors.pink, fontSize:42), textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
