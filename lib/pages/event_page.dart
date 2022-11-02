import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset("assets/img/lior.jpg"),
                title: Text('Lior Chamla(13h à 13h30)'),
                subtitle: Text('Le code lagacy'),
                trailing: Icon(Icons.info),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

