import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynconf 2022"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "Assets/img/logo.svg",
              color: Colors.blue,
            ),
            const Text("Asynconf 2022",
              style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
              ),
            ),
            const Text("Salon virtuel de l'informatique du 27 au 29 octobre 2022",
              style: TextStyle(
                  fontSize: 24
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___,) => EventPage()
                    )
                );
              },
              label: Text("Afficher le planning",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              icon: Icon(Icons.calendar_month),
            )
          ],
        ),
      ),
    );
  }
}