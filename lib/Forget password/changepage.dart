import 'package:flutter/material.dart';

class Changepage extends StatefulWidget {
  const Changepage({super.key});

  @override
  State<Changepage> createState() => _Changepage();
}

class _Changepage extends State<Changepage> {
  bool passvis1 = true;
  bool passvis2 = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blue[200]),

      margin: const EdgeInsets.all(20),
      //color: const Color.fromARGB(118, 58, 34, 238),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
////////////////////// C1 ///////////////////////////
            const Column(
              children: [
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Text('User  Name',
            //         textAlign: TextAlign.right,
            //         style: TextStyle(fontSize: 30))
            //   ],
            // ),
            // // SizedBox(height: 9,),
            // TextField(
            //   decoration: InputDecoration(
            //       filled: true,
            //       fillColor: Colors.white,
            //       border: OutlineInputBorder(
            //           borderRadius:
            //               BorderRadius.all(Radius.circular(20))),
            //       hintText: "Enter Your User Name",
            //       hintStyle: TextStyle(
            //           color: Color.fromARGB(200, 200, 200, 200))),
            //   keyboardType: TextInputType.text,
            // ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
/////////////////////// C2 ///////////////////////////
            Column(
              children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('New Password',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 30))
              ],
            ),
            TextField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passvis1 = !passvis1;
                        });
                      },
                      icon: Icon(passvis1
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                    // labelText: "Last Name",
                    // labelStyle: TextStyle(fontSize: 20),
                    hintText: "Enter Your Password",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(200, 200, 200, 200))),
                keyboardType: TextInputType.text,
                obscureText: passvis1),
              ],
            ),
            const SizedBox(height: 30),
//////////////////////// C3 //////////////////////////
            Column(
              children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Confirm Password',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passvis2 = !passvis2;
                      });
                    },
                    icon: Icon(
                        passvis2 ? Icons.visibility_off : Icons.visibility),
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  // labelText: "Last Name",
                  // labelStyle: TextStyle(fontSize: 20),
                  hintText: "Enter Confirm Password",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(200, 200, 200, 200))),
              keyboardType: TextInputType.text,
              obscureText: passvis2,
            ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

/////////////////////////// B1 /////////////////////////
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff006FFD),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
    );
  }
}
//  Container(
//           , color: Colors.blue[200]),
// //width: double.infinity,height:3000,
//           //padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//           //color: Colors.blue[200],