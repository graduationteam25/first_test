import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

// ignore: must_be_immutable
class LogIn extends StatefulWidget {
  LogIn(this.switchScreen, {super.key});
  void Function() switchScreen;

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _showDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Invalid input'),
        content: const Text(
            'Please make sure a valid username and passsword was entered.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Okay'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/images/sign_up.jpeg'),
          const Text(
            'Log In',
            style: TextStyle(
              color: Color(0xff1B225B),
              fontFamily: 'assets/fonts/PontanoSans-SemiBold.ttf',
              fontSize: 64,
              fontWeight: FontWeight.w600,
            ),
          ),
          Card(
            color: const Color(0xff6FBAFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                        color: Color(0xff1b225b),
                        fontFamily: 'assets/fonts/PontanoSans-Medium.ttf',
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  CupertinoTextField(
                    cursorColor: const Color(0xff1B225B),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 5,
                      bottom: 5,
                    ),
                    placeholder: 'Enter Your Username',
                    keyboardType: TextInputType.emailAddress,
                    controller: _usernameController,
                    suffix: const Icon(
                      Icons.email_outlined,
                      color: Color(0xff001A72),
                    ),
                  ),
                  const SizedBox(height: 27),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xff1b225b),
                      fontFamily: 'assets/fonts/PontanoSans-Medium.ttf',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CupertinoTextField(
                    key: _formKey,
                    maxLength: 10,
                    cursorColor: const Color(0xff1B225B),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 5,
                      bottom: 5,
                    ),
                    placeholder: 'Enter Your Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    obscureText: true,
                    suffix: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff001A72),
                    ),
                  ),
                  const SizedBox(height: 27),
                  ElevatedButton(
                    onPressed: () {
                      if (_usernameController.text.trim().isEmpty ||
                          _passwordController.text.trim().isEmpty) {
                        _showDialog();
                      } else {
                        setState(() {
                          const Home();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 60),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff006FFD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  const Center(
                    child: Text(
                      'forgot password ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'assets/fonts/microsoft-himalaya.ttf',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have any account ?',
                        style: TextStyle(
                          color: Color(0xff1b225b),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 11),
                      Text(
                        'sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/sign_up_down.jpeg'),
        ],
      ),
    );
  }
}
