import 'package:flutter/material.dart';

Widget history(BuildContext context) {
  return Column(children: [
    Container(
      margin: const EdgeInsets.all(2),
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).width * 1,
      decoration: const BoxDecoration(
          color: Color(0xffC6F432),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
    Container(
      margin: const EdgeInsets.all(2),
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).width * 1,
      decoration: const BoxDecoration(
          color: Color(0xffFEC4DD),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
    Container(
      margin: const EdgeInsets.all(2),
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).width * 1,
      decoration: const BoxDecoration(
          color: Color(0xffC09FF8),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    )
  ]);
}
