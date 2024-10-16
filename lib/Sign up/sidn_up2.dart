import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/bar.dart';
import '../LogIn/app.dart';

// ignore: must_be_immutable
class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isvisible1 = false;
  bool _isvisible2 = false;
  bool _isaccepted = false;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Invalid input'),
        content: const Text(
            'Please make sure a valid Frist Name, Last Name and Phone number/Email was entered.'),
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
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/sign_up.jpeg'),
              const Text(
                'Sign Up',
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
                    padding: const EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Username',
                            style: TextStyle(
                                color: Color(0xff1B225B),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 9),
                          CupertinoTextField(
                            cursorColor: const Color(0xff1B225B),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
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
                          const SizedBox(height: 20),
                          const Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xff1B225B),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 9),
                          CupertinoTextField(
                            cursorColor: const Color(0xff1B225B),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            placeholder: 'Enter Your Password',
                            obscureText: !_isvisible1,
                            keyboardType: TextInputType.visiblePassword,
                            controller: _passwordController,
                            suffix: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isvisible1 = !_isvisible1;
                                });
                              },
                              icon: Icon(
                                _isvisible1
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xff001A72),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Conferm Password',
                            style: TextStyle(
                                color: Color(0xff1B225B),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 9),
                          CupertinoTextField(
                            cursorColor: const Color(0xff1B225B),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            placeholder: 'Enter Conferm Password',
                            obscureText: !_isvisible2,
                            keyboardType: TextInputType.visiblePassword,
                            controller: _confirmPasswordController,
                            suffix: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isvisible2 = !_isvisible2;
                                });
                              },
                              icon: Icon(
                                _isvisible2
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xff001A72),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isaccepted = !_isaccepted;
                                  });
                                },
                                icon: Icon(
                                  _isaccepted
                                      ? Icons.check_circle_outline_outlined
                                      : Icons.circle_outlined,
                                  color: const Color(0xff001A72),
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'I accept the policy and terms.',
                                style: TextStyle(
                                  color: Color(0xff383636),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              if (_usernameController.text.trim().isEmpty ||
                                  _passwordController.text.trim().isEmpty ||
                                  _confirmPasswordController.text
                                      .trim()
                                      .isEmpty ||
                                  _isaccepted == true) {
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
                              ),
                            ),
                            child: const Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already have account ? ',
                                style: TextStyle(
                                  color: Color(0xff1b225b),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(width: 11),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const App()),
                                  );
                                },
                                child: const Text(
                                  'log in',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  )),
              Image.asset(
                'assets/images/sign_up_down.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
