import 'package:flutter/material.dart';

import 'package:history/historypage.dart';

class Apbar extends StatefulWidget {
  const Apbar({super.key});

  @override
  State<Apbar> createState() => _ApbarState();
}

class _ApbarState extends State<Apbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        //backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_3_outlined, color: Colors.blue[900])),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.list_outlined,
                color: Colors.blue[900],
              ))
        ],
      ),
      body: const Historypage(),
    ));
  }
}
