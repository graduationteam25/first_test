import 'package:flutter/material.dart';
import 'design.dart';
import 'changepage.dart';

class Forgetpage extends StatefulWidget {
  const Forgetpage({super.key});

  @override
  State<Forgetpage> createState() => _ForgetpageState();
}

class _ForgetpageState extends State<Forgetpage> {
  Widget? activeone;

  @override
  void initState() {
    super.initState();
    activeone = Design(swetichone);
  }

  void swetichone() {
    setState(() {
      activeone = const Changepage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup',
      home: Scaffold(body: activeone),
    );
  }
}
