import 'package:first_test/sidn_up2.dart';
import 'package:first_test/sign_up.dart';
import 'package:flutter/material.dart';

// import 'bar.dart';
// import 'bottom_bar.dart';
import 'forgetpage.dart';
// import 'home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = SignUp(switchScreen1);
  }

  void switchScreen1() {
    setState(() {
      activeScreen =SignUp2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff8f9fe),
        body: Forgetpage(),
      ),
    );
  }
}
