import 'package:first_test/Sign%20up/sidn_up2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../LogIn/app.dart';

// import 'bar.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _fristNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();

  // bool _isvisible = false;

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
    return Center(
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
                      'Frist Name',
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
                      placeholder: 'Enter Your Frist Name',
                      keyboardType: TextInputType.name,
                      controller: _fristNameController,
                      suffix: TextButton(
                        onPressed: () {},
                        child: const Text(''),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Last Name',
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
                      placeholder: 'Enter Your Last Name',
                      keyboardType: TextInputType.name,
                      controller: _lastNameController,
                      suffix: TextButton(
                        onPressed: () {},
                        child: const Text(''),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Phone number/Email',
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
                      placeholder: 'Enter Your Phone number/Email',
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                      suffix: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.phone_outlined,
                          color: Color(0xff001A72),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_fristNameController.text.trim().isEmpty ||
                            _lastNameController.text.trim().isEmpty ||
                            _phoneController.text.trim().isEmpty) {
                          _showDialog();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp2()),
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
                        'Next',
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
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/sign_up_down.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
