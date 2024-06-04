import 'package:flutter/material.dart';
import '../pages/random.dart';
import '../pages/list.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _currentIndex = 0;
  final _pageWidgets = [
    RandomScreen(),
    ListScreen(),
    RandomScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.done,),label: 'Random'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,), label: 'MyPage'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
  void _onItemTapped(int index) => setState(() => _currentIndex = index );
  }

