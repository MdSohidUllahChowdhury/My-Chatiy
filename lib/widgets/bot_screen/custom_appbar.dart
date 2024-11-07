import 'package:flutter/material.dart';

Widget customAppBar() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
          radius: 20, backgroundColor: Colors.grey, child: Icon(Icons.menu)),
      Text(
        'Hi,  S h a k i l 👋',
        style: TextStyle(fontSize: 13, color: Colors.white),
      ),
      CircleAvatar(
          radius: 20, backgroundColor: Colors.grey, child: Icon(Icons.person))
    ],
  );
}
