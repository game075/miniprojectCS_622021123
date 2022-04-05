import 'package:firstfluttercs/pages/homepage.dart';
import 'package:flutter/material.dart';

class botNavBar extends StatefulWidget {
  const botNavBar({Key? key}) : super(key: key);

  @override
  State<botNavBar> createState() => _botNavBarState();
}

class _botNavBarState extends State<botNavBar> {
  late int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.point_of_sale,
      size: 150,
    ),
    Icon(
      Icons.miscellaneous_services,
      size: 150,
    ),
    Icon(
      Icons.history_rounded,
      size: 150,
    ),
    MyHomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Demo'),
      // ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        // unselectedFontSize: 15,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.redAccent, size: 35),
        selectedItemColor: Colors.redAccent,
        // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.point_of_sale),
            label: 'Sell Mala',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services),
            label: 'Manage Mala',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded),
            label: 'Sales history',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
