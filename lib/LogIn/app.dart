import 'package:flutter/material.dart';

import 'log_in.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff8f9fe),
        body: LogIn(),
      ),
    );
  }
}
