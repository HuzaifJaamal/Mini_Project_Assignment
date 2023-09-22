import 'package:flutter/material.dart';
import 'package:mini_project/constant/colors.dart';
import 'package:mini_project/views/widgets/cart_icon.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      color: AppColor.PurpleColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 55, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Hey, Huzaifa',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    CartIcon(),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(

                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Search Product',
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      fillColor: Color(0xff153075),
                      filled: true,

                      focusColor: Colors.transparent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      'DELIVERY TO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Spacer(),
                    Text('WITHIN', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
                const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Only Karachi.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '2 to 3 Working Days',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
