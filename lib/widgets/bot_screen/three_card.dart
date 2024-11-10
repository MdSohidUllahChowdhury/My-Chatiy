import 'package:flutter/material.dart';
import 'package:my_chatiy/widgets/bot_screen/utils.dart';

Widget threeCard(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Column(
          children: [
            ParentCard().oneCard(context),
          ],
        ),
        Column(
          children: [
            ParentCard().twoCard(context),
            ParentCard().threeCard(context)
          ],
        ),
      ],
    ),
  );
}
