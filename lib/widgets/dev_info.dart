import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/link.dart';

Widget devInfo(BuildContext context) {
  return Row(children: [
    Link(
      uri: Uri.parse('https://github.com/MdSohidUllahChowdhury'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('lib/assets/images/git.png'),
          ),
        )
            .animate()
            .flip()
            .shimmer(duration: const Duration(seconds: 4), color: Colors.white),
      ),
    ),
    const SizedBox(width: 3),
    Link(
      uri: Uri.parse('https://www.linkedin.com/in/md-sohid-ullah-chowdhury/'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('lib/assets/images/in.png'),
          ),
        )
            .animate()
            .flip()
            .shimmer(duration: const Duration(seconds: 4), color: Colors.white),
      ),
    ),
    const SizedBox(width: 3),
    Link(
      uri: Uri.parse('https://www.facebook.com/shakilchowdhury19'),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Animate(
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('lib/assets/images/fb.png'),
          ).animate().flip().shimmer(
              duration: const Duration(seconds: 4), color: Colors.white),
        ),
      ),
    )
  ]);
}
