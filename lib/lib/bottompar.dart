import 'package:flutter/material.dart';
import 'package:history/historypage.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistorytState();
}

class _HistorytState extends State<History> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const Historypage(),
    const Center(child: Text('Apbar Page Content')),
    const Center(child: Text('Messages Page Content')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Updates the selected tab index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      // Display content based on selected tab
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped, // Handle tab tap to update the view
      ),
    );
  }
}
