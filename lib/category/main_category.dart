import 'package:flutter/material.dart';
import 'package:mini_project/category/category/category.dart';
import 'package:mini_project/category/top/top.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CategoryTop(),
            CategoryGrid(category: '',name: ''),
          ],
        ),
      ),
    );
  }
}
