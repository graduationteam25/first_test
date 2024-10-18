import 'package:flutter/material.dart';

class Historypage extends StatelessWidget {
  const Historypage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(3)),
              border: Border.all(color: Colors.black),
            ),
            // decoration: const Box(color: Color.fromARGB(179, 255, 44, 44),border: BorderStyle.solid),
            child: const IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'NAME',
                    style: TextStyle(fontSize: 32),
                  ),
                  VerticalDivider(
                    color: Colors.black87,
                    width: 50,
                  ),
                  Text(
                    ' DATE ',
                    style: TextStyle(fontSize: 32),
                  ),
                  VerticalDivider(
                    color: Colors.black87,
                    width: 50,
                  ),
                  Text('RESULT', style: TextStyle(fontSize: 32))
                ],
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(
            top: 13,
          )),

          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                bottom: 25,
                left: 10,
              )),
              Text(
                "Today --------------------------------------",
                style: TextStyle(
                    color: Color.fromRGBO(0, 111, 253, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ],
          ),

          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),

          const Divider(
            color: Colors.black87,
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          const Divider(
            color: Colors.black87,
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          const Divider(
            color: Colors.black87,
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          const Divider(
            color: Colors.black87,
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          const Divider(
            color: Colors.black87,
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'inksentinel-high-resolution',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text(
                  ' 1/2/2010 1:30 ',
                  style: TextStyle(fontSize: 15),
                ),
                VerticalDivider(
                  color: Colors.black87,
                  width: 50,
                ),
                Text('VALID', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
//////////////////////////C2///////////////////////// C2 ///////////////////
          const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 13,
              )),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    bottom: 25,
                    left: 10,
                  )),
                  Text(
                    "yesterday --------------------------------------",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 111, 253, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
            ],
          ),

/////////////////////////// C3 ///////////////// C3 //////////////////
          const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 13,
              )),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    bottom: 25,
                    left: 10,
                  )),
                  Text(
                    "Oldest --------------------------------------",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 111, 253, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
              Divider(
                color: Colors.black87,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'inksentinel-high-resolution',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text(
                      ' 1/2/2010 1:30 ',
                      style: TextStyle(fontSize: 15),
                    ),
                    VerticalDivider(
                      color: Colors.black87,
                      width: 50,
                    ),
                    Text('VALID', style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
