import 'package:flutter/material.dart';
import 'design.dart';
// import 'changepage.dart';

class Forgetpage extends StatefulWidget {
  const Forgetpage({super.key});

  @override
  State<Forgetpage> createState() => _ForgetpageState();
}

class _ForgetpageState extends State<Forgetpage> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Signup',
      home: Scaffold(body: Design()),
    );
  }
}
