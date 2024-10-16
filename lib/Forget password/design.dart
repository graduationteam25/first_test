import 'package:first_test/LogIn/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});
  // final void Function() swetichone;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row(children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const App()),
              );
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
          const Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.left,
          )
        ]),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            ////////////////////// C1 ///////////////////////////
            const Text(
              'Don’t worry ! It happens. Please enter your email and the phone number we will send the OTP in this phone number.',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/forgot_password.jpeg',
              height: 300,
              width: double.infinity,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Text('Email Address',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 24))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                CupertinoTextField(
                  cursorColor: Color(0xff1B225B),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                  placeholder: 'Enter Your Email',
                  keyboardType: TextInputType.emailAddress,
                  suffix: Icon(
                    Icons.email_outlined,
                    color: Color(0xff001A72),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 9),
            /////////////////////// C2 ///////////////////////////
            const Column(
              children: [
                Row(
                  children: [
                    Text('phone number',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 24))
                  ],
                ),
                SizedBox(height: 5),
                CupertinoTextField(
                  cursorColor: Color(0xff1B225B),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                  placeholder: 'Enter your phone number',
                  keyboardType: TextInputType.phone,
                  suffix: Icon(
                    Icons.phone_android_sharp,
                    color: Color(0xff001A72),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            /////////////////////////// B1 /////////////////////////
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(800, 60),
                backgroundColor: const Color(0xff006ffd),
              ),
              child: const Text('Continue',
                  style: TextStyle(color: Colors.white, fontSize: 36)),
            ),
          ]),
        ),
        Image.asset('assets/images/sign_up_down.jpeg'),
      ]),
    );
  }
}
