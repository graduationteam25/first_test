// import 'package:first_test/home.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0; // Tracks the selected tab index

//   // Pages for each tab
//   static const List<Widget> _pages = <Widget>[
//     Home(),
//     Center(child: Text('Home Page Content')),
//     Center(child: Text('Messages Page Content')),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index; // Updates the selected tab index
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//        // Display content based on selected tab
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//           ),
//         ],
//         currentIndex: _selectedIndex, // Highlight the selected tab
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped, // Handle tab tap to update the view
//       ),
//     );
//   }
// }
