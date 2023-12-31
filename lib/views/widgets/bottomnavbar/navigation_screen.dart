import 'package:flutter/material.dart';
import 'package:mini_project/category/main_category.dart';
import 'package:mini_project/views/widgets/bottomnavbar/bottomnavbar.dart';

import '../../grocery_home/groceryhome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selected = 0;


  final screens = [
    const GroceryHome(),
    const Category(),
    const Center(child: Text('To be Process')),
    const Center(child: Text('To be Process')),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selected],
      bottomNavigationBar: Container(
        height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 7,
                spreadRadius: 3,
                offset: Offset.fromDirection(2))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomIcons(
              icon: Icons.home,
              iconName: 'Home',
              onPressed: () {
                setState(() {
                  _selected = 0;
                });
              }, selected: _selected == 0,
            ),
            CustomIcons(
              icon: Icons.category_outlined,
              iconName: 'Category',
              onPressed: () {
                setState(() {
                  _selected = 1;
                });
              }, selected: _selected == 1,
            ),
            CustomIcons(
              icon: Icons.favorite,
              iconName: 'Favorite',
              onPressed: () {
                setState(() {
                  _selected = 2;
                });
              }, selected: _selected == 2,
            ),
            CustomIcons(
              icon: Icons.more_vert,
              iconName: 'More',
              onPressed: () {
                setState(() {
                  _selected = 3;
                });
              }, selected: _selected == 3,
            ),
          ],
        ),
      ),
    );
  }
}
