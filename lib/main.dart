import 'package:asynconf/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Asynconf"),
        ),
        body : const HomePage(),
          bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil'
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Planning'
              )
        ],
      ),
      ),
    );
  }
}
