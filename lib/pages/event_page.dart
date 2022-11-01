import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}