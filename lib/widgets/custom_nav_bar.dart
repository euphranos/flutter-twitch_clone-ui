// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) func;
  final List items;

  const CustomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.func,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        iconSize: 28,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedItemColor: Color(0xffBF94FF),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Color(0xffBF94FF)),
        backgroundColor: Colors.black,
        onTap: func,
        items: List.generate(items.length, (index) {
          return BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: items[index]['activeIcon'],
            ),
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: items[index]['icon'],
            ),
            label: items[index]['label'],
          );
        }));
  }
}
