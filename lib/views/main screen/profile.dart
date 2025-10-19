import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../intro screen/login.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    const cardColor = Color(0xFF0B2545);
    const accent = Color(0xFFC6F432);
    final auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.white),
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Builder(builder: (context) {
        final uid = FirebaseAuth.instance.currentUser?.uid;
        if (uid == null) {
          return const Center(
              child:
                  Text('Not signed in', style: TextStyle(color: Colors.white)));
        }

        final docStream = FirebaseFirestore.instance
            .collection('User Sing Up Info')
            .doc(uid)
            .snapshots();

        return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: docStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            final doc = snapshot.data;
            if (doc == null || !doc.exists) {
              return const Center(
                  child: Text('No profile found',
                      style: TextStyle(color: Colors.white)));
            }
            final data = doc.data()!;

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [cardColor, Colors.black87],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 18,
                          offset: Offset(0, 10),
                        )
                      ],
                      border: Border.all(color: accent.withOpacity(0.08)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 40.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // header with larger avatar and title
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      colors: [
                                        accent.withOpacity(.9),
                                        Colors.transparent
                                      ],
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    radius: 42,
                                    backgroundColor: Colors.white12,
                                    child: Icon(Icons.change_history_rounded,
                                        size: 60, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Every Chat Matters',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: Colors.white70)),
                                      const SizedBox(height: 6),
                                      Text('MyChatiy User',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 4),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 18),

                            Divider(color: Colors.white.withOpacity(0.12)),
                            const SizedBox(height: 16),

                            // info tiles
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('First Name',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15)),
                                        const SizedBox(height: 6),
                                        Text(data["First Name"],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Last Name',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15)),
                                        const SizedBox(height: 6),
                                        Text(data["Last Name"],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 12),

                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Email',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 15)),
                                  const SizedBox(height: 6),
                                  Text(data['Email'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                  const SizedBox(height: 12),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                                    leading: const Icon(
                                      Icons.logout_outlined,
                                      color: Colors.white,
                                    ),
                                    title: InkWell(
                                      onTap: () async {
                                        await auth.signOut().then((value) =>
                                            Get.offAll(() => const LogIn()));
                                      },
                                      child: const Text(
                                        'Log Out ',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
