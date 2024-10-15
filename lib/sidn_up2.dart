import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp2 extends StatelessWidget {
  SignUp2({super.key});

  bool passvis1 = true;
  bool passvis2 = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/sign_up.jpeg',
              height: 100,
              width: double.infinity,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                color: Color(0xff1B225B),
                fontSize: 64,
                fontWeight: FontWeight.w400,
              ),
            ),
            Card(
                color: const Color(0xff6FBAFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const CupertinoTextField(
                          cursorColor: Color(0xff1B225B),
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 5,
                            bottom: 5,
                          ),
                          placeholder: 'Enter Your Username',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Color(0xff1B225B),
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        
                        CupertinoTextField(
                          cursorColor: const Color(0xff1B225B),
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 5,
                            bottom: 5,
                          ),
                          placeholder: 'Enter Your Password',
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          suffix: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility_off_sharp),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Text(
                          'Conferm Password',
                          style: TextStyle(
                              color: Color(0xff1B225B),
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const CupertinoTextField(
                          cursorColor: Color(0xff1B225B),
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 5,
                            bottom: 5,
                          ),
                          placeholder: 'Enter Conferm Password',
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          suffix: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff001A72),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(300, 40),
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xff006FFD),
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          child: const Text(
                            'Submit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 36,
                              height: 0.7,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.circle_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'I accept the policy and terms.',
                                style: TextStyle(
                                  color: Color(0xff383636),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account ?',
                              style: TextStyle(color: Color(0xff1B225B)),
                            ),
                            Text(
                              ' log in',
                              style: TextStyle(color: Color(0xff233DC6)),
                            )
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
    );
  }
}
