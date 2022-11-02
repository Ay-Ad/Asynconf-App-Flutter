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
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset("assets/img/damien.jpg"),
                title: Text('Damien Cavaillès(17h30 à 18h'),
                subtitle: Text('git blame --no-offense ?'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/img/defendintelligence.jpg"),
                title: Text('Defend intelligence (18h à 18h30)'),
                subtitle: Text('A la decouverte des IA generatif'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/img/lior.jpg"),
                title: Text('Lior Chamla(13h à 13h30)'),
                subtitle: Text('Le code lagacy'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
