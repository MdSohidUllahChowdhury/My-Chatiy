import 'package:flutter/material.dart';
import 'package:my_chatiy/widgets/utils.dart';

Widget threeCard(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Column(
          children: [
            ParentCard().voiceCard(context),
          ],
        ),
        Column(
          children: [
            ParentCard().chatCard(context),
            ParentCard().imageCard(context)
          ],
        ),
      ],
    ),
  );
}
