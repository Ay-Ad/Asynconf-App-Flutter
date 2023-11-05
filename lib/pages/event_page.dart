import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final events = [
    {
      "speaker": "Lior Chamla",
      "date": "(13h à 13h30)",
      "subject": "Le codde Legacy",
      "avatar": "lior"
    },
    {
      "speaker": "Damien Cavaillès",
      "date": "(17h à 17h30)",
      "subject": "git blame --no-offense",
      "avatar": "damien"
    },
    {
      "speaker": "Defend Intelligence",
      "date": "(17h à 17h30)",
      "subject": "A la decouverte des IA generatives",
      "avatar": "defendIntelligence"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final avatar = event['avatar'];
          final speaker = event['speaker'];
          final date = event['date'];
          final subject = event['subject'];

          return Card(
            child: ListTile(
              leading: Image.asset("assets/img/$avatar.jpg"),
              title: Text('$speaker ($date)'),
              subtitle: Text('$subject'),
              trailing: const Icon(Icons.info_outline),
            ),
          );
        },
      ),
    );
  }
}
