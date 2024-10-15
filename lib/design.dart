import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design(this.swetichone, {super.key});
  final void Function() swetichone;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(bottom: 50),
          // color: const Color.fromARGB(255, 188, 33, 33),
          child: Column(children: [
            Row(children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
              const Text(
                'Forget Your Password',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.left,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Don’t worry ! It happens. Please enter  your email \n and the phone number  we will send the OTP in \n thisphone number.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/images/home.png',
              height: 300,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                ////////////////////// C1 ///////////////////////////
                Container(
                    child: const Column(
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
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 5, bottom: 5),
                      placeholder: 'Enter Your Email',
                      keyboardType: TextInputType.phone,
                      suffix: Icon(
                        Icons.email_outlined,
                        color: Color(0xff001A72),
                      ),
                    ),
                    // SizedBox(height: 9,),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       suffixIcon: Icon(
                    //         (Icons.email_outlined),
                    //         color: Colors.grey,
                    //       ),
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(15))),
                    //       hintText: "Enter Your Email",
                    //       hintStyle: TextStyle(
                    //           color: Color.fromARGB(200, 200, 200, 200))),
                    //   keyboardType: TextInputType.text,
                    // ),
                  ],
                )),
                const SizedBox(
                  height: 9,
                ),
                /////////////////////// C2 ///////////////////////////
                Container(
                    child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('phone number',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 24))
                      ],
                    ),
                    CupertinoTextField(
                      cursorColor: Color(0xff1B225B),
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 5, bottom: 5),
                      placeholder: 'Enter your phone number',
                      keyboardType: TextInputType.phone,
                      suffix: Icon(
                        Icons.phone_android_sharp,
                        color: Color(0xff001A72),
                      ),
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       suffixIcon: Icon(
                    //         (Icons.phone_android_sharp),
                    //         color: Colors.grey,
                    //       ),
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20))),
                    //       // labelText: "Last Name",
                    //       // labelStyle: TextStyle(fontSize: 20),
                    //       hintText: "Enter your phone number",
                    //       hintStyle: TextStyle(
                    //           color: Color.fromARGB(200, 200, 200, 200))),
                    //   keyboardType: TextInputType.text,
                    // ),
                  ],
                )),

                const SizedBox(
                  height: 30,
                ),
                /////////////////////////// B1 /////////////////////////
                ElevatedButton(
                  onPressed: swetichone,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(800, 60),
                    backgroundColor: const Color(0xff006ffd),
                  ),
                  child: const Text('Continue',
                      style: TextStyle(color: Colors.white, fontSize: 36)),
                ),
                // const SizedBox(
                //   height: 30,
                // ),
              ]),
            ),
          ])),
    );
  }
}
