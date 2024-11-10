import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/link.dart';

Widget devInfo(BuildContext context) {
  return Column(children: [
    Link(
      uri: Uri.parse('https://github.com/MdSohidUllahChowdhury'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: Container(
            margin: const EdgeInsets.all(2),
            height: MediaQuery.sizeOf(context).height * 0.07,
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: const BoxDecoration(
                color: Color(0xff171717),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: const Row(
              children: [
                SizedBox(width:25),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('lib/assets/images/git.png'),
                ),
                SizedBox(width: 30),
                Expanded(
                    child: Text('GitHub Profile',
                        style: TextStyle(fontSize: 14, color: Colors.white))),
              ],
            ),
          ),
        )
            .animate()
            .flip(
                duration: const Duration(seconds: 2),
                delay: const Duration(seconds: 4))
            .shimmer(duration: const Duration(seconds: 2), color: Colors.white),
      ),
    ),
    Link(
      uri: Uri.parse('https://www.linkedin.com/in/sohid-chowdhury/'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: Container(
            margin: const EdgeInsets.all(2),
            height: MediaQuery.sizeOf(context).height * 0.07,
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: const BoxDecoration(
                color: Color(0xff171717),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: const Row(
              children: [
                SizedBox(width: 25),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('lib/assets/images/in.png'),
                ),
                SizedBox(width: 30),
                Expanded(
                    child: Text('LinkedIn Profile',
                        style: TextStyle(fontSize: 14, color: Colors.white))),
              ],
            ),
          ),
        )
            .animate()
            .flip(
                duration: const Duration(seconds: 2),
                delay: const Duration(seconds: 4))
            .shimmer(duration: const Duration(seconds: 2), color: Colors.white),
      ),
    ),
    Link(
      uri: Uri.parse('https://www.facebook.com/shakilchowdhury19'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: Container(
            margin: const EdgeInsets.all(2),
            height: MediaQuery.sizeOf(context).height * 0.07,
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: const BoxDecoration(
                color: Color(0xff171717),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: const Row(
              children: [
                SizedBox(width: 25),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('lib/assets/images/fb.png'),
                ),
                SizedBox(width: 30),
                Expanded(
                    child: Text('Facebook Profile',
                        style: TextStyle(fontSize:14, color: Colors.white))),
              ],
            ),
          )
              .animate()
              .flip(
                  duration: const Duration(seconds: 2),
                  delay: const Duration(seconds: 4))
              .shimmer(
                  duration: const Duration(seconds: 2), color: Colors.white),
        ),
      ),
    )
  ]);
}
