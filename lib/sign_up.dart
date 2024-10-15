import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp(this.switchScreen, {super.key});
  // final _usernameController = TextEditingController();

  void Function() switchScreen;

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
                // fontFamily: address,
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Frist Name',
                              style: TextStyle(
                                  color: Color(0xff1B225B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            CupertinoTextField(
                              cursorColor: Color(0xff1B225B),
                              padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 5,
                                bottom: 5,
                              ),
                              placeholder: 'Enter Your Frist Name',
                              keyboardType: TextInputType.name,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Name',
                              style: TextStyle(
                                  color: Color(0xff1B225B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            CupertinoTextField(
                              cursorColor: Color(0xff1B225B),
                              padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 5,
                                bottom: 5,
                              ),
                              placeholder: 'Enter Your Last Name',
                              keyboardType: TextInputType.name,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone number/Email',
                              style: TextStyle(
                                  color: Color(0xff1B225B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            CupertinoTextField(
                              cursorColor: Color(0xff1B225B),
                              padding: EdgeInsets.only(
                                  left: 16, right: 16, top: 5, bottom: 5),
                              placeholder: 'Enter Your Phone number/Email',
                              keyboardType: TextInputType.phone,
                              suffix: Icon(
                                Icons.phone_outlined,
                                color: Color(0xff001A72),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        ElevatedButton(
                          onPressed: switchScreen,
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
                            'Next',
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
    );
  }
}
