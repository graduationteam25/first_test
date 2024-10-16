import 'package:first_test/Home/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Tracks the selected tab index

  // Pages for each tab
  static const List<Widget> _pages = <Widget>[
    Home(),
    Center(child: Text('Home Page Content')),
    Center(child: Text('Messages Page Content')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Updates the selected tab index
    });
  }

  bool _isListVisible = false; // To control list visibility
  bool _isListVisiblep = false; // To control list visibility

  // Function to toggle the list visibility
  void _toggleList() {
    setState(() {
      _isListVisible = !_isListVisible; // Toggle list visibility
    });
  }

  void _toggleListp() {
    setState(() {
      _isListVisiblep = !_isListVisiblep; // Toggle list visibility
    });
  }

  void _hideLists() {
    setState(() {
      _isListVisible = false;
      _isListVisiblep = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isListVisible || _isListVisiblep) {
          _hideLists(); // Hide lists when tapped outside
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            _pages[_selectedIndex],
            if (_isListVisible)
              Positioned(
                top: 0, // Set the top position
                right: 0, // Set the right position
                child: Container(
                  width: 200, // Set the width of the list container
                  color: Colors.white, // Background color
                  child: Material(
                    // Use Material to add shadow and elevation
                    elevation: 5,
                    child: ListView(
                      shrinkWrap:
                          true, // Allows the list to take only the space it needs
                      children: [
                        Container(
                            color: const Color(0xff090505),
                            child: Card(
                              color: const Color(0xff090505),
                              child: Column(
                                children: [
                                  Container(
                                    width: double
                                        .infinity, // Max width of the container
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2.0), // Line at the bottom
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Signature verification',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffF6F6F6),
                                          fontSize: 32,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double
                                        .infinity, // Max width of the container
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2.0), // Line at the bottom
                                      ),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Setting',
                                          style: TextStyle(
                                            color: Color(0xffF6F6F6),
                                            fontSize: 32,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    width: double
                                        .infinity, // Max width of the container
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2.0), // Line at the bottom
                                      ),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'History',
                                          style: TextStyle(
                                            color: Color(0xffF6F6F6),
                                            fontSize: 32,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    width: double
                                        .infinity, // Max width of the container
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2.0), // Line at the bottom
                                      ),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Help',
                                          style: TextStyle(
                                            color: Color(0xffF6F6F6),
                                            fontSize: 32,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    width: double
                                        .infinity, // Max width of the container
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2.0), // Line at the bottom
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.logout_outlined,
                                            color: Color(0xffF6F6F6),
                                          ),
                                          Text(
                                            ' Log out',
                                            style: TextStyle(
                                              color: Color(0xffF6F6F6),
                                              fontSize: 32,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            if (_isListVisiblep)
              Positioned(
                top: 0, // Set the top position
                left: 0, // Set the left position
                child: Container(
                  width: 200, // Set the width of the list container
                  color: Colors.white, // Background color
                  child: Material(
                    // Use Material to add shadow and elevation
                    elevation: 5,
                    child: ListView(
                      shrinkWrap:
                          true, // Allows the list to take only the space it needs
                      children: [
                        Container(
                          width: 283,
                          color: const Color(0xff090505),
                          child: Card(
                            color: const Color(0xff090505),
                            child: Column(
                              children: [
                                Container(
                                  width: double
                                      .infinity, // Max width of the container
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2.0), // Line at the bottom
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Full Name',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffF6F6F6),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Max width of the container
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2.0), // Line at the bottom
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline,
                                          color: Color(0xffF6F6F6),
                                        ),
                                        Text(
                                          ' Add Account',
                                          style: TextStyle(
                                            color: Color(0xffF6F6F6),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Max width of the container
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2.0), // Line at the bottom
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.logout_outlined,
                                          color: Color(0xffF6F6F6),
                                        ),
                                        Text(
                                          ' Log out',
                                          style: TextStyle(
                                            color: Color(0xffF6F6F6),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        appBar: AppBar(
          toolbarHeight: 40,
          iconTheme: const IconThemeData(
            color: Color(0xff001A72), // Apply to all icons
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: _toggleListp,
              icon: const Icon(Icons.person_2_outlined),
            ),
            const Spacer(),
            IconButton(
              onPressed: _toggleList,
              icon: const Icon(Icons.list),
            )
          ],
        ),
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
      ),
    );
  }
}
