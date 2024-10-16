import 'package:first_test/Forget%20password/forgetpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/bar.dart';
import '../Sign up/sign.dart';

// ignore: must_be_immutable
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isvisible = false;

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
              fontSize: 64,
              fontWeight: FontWeight.w600,
            ),
          ),
          Card(
            color: const Color(0xff6FBAFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                        color: Color(0xff1b225b),
                        // fontFamily: 'assets/fonts/PontanoSans-Medium.ttf',
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  CupertinoTextField(
                    cursorColor: const Color(0xff1B225B),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    placeholder: 'Enter Your Username',
                    keyboardType: TextInputType.emailAddress,
                    controller: _usernameController,
                    suffix: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email_outlined,
                        color: Color(0xff001A72),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xff1b225b),
                      // fontFamily: 'assets/fonts/PontanoSans-Medium.ttf',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CupertinoTextField(
                    cursorColor: const Color(0xff1B225B),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    placeholder: 'Enter Your Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    obscureText: !_isvisible,
                    suffix: IconButton(
                      onPressed: () {
                        // Toggle the state to show/hide the password
                        setState(() {
                          _isvisible = !_isvisible;
                        });
                      },
                      icon: Icon(
                        _isvisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      if (_usernameController.text.trim().isEmpty ||
                          _passwordController.text.trim().isEmpty) {
                        _showDialog();
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(20000, 60),
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
                  const SizedBox(height: 15),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgetpage()),
                        );
                      },
                      child: const Text(
                        'forgot password ?',
                        style: TextStyle(
                          color: Colors.white,
                          // fontFamily: 'assets/fonts/microsoft-himalaya.ttf',
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have any account ? ',
                        style: TextStyle(
                          color: Color(0xff1b225b),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sign()),
                          );
                        },
                        child: const Text(
                          'sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
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
