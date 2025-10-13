import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/login.dart';

Widget customDrawer(BuildContext context) {
  final auth = FirebaseAuth.instance;
  return Drawer(
    backgroundColor: const Color(0xff171717),
    width: MediaQuery.sizeOf(context).width * 0.7,
    elevation: 5,
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DrawerHeader(
          child: Center(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'New Chat',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Color.fromARGB(255, 73, 68, 68),
                  constraints: BoxConstraints(maxWidth: 300)),
            ),
          ),
        ),
        Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.white,
              ),
              title: Text(
                'Clear Conversation',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Upgrade to Plus',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.dark_mode_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Dark Mood',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.format_quote_sharp,
                color: Colors.white,
              ),
              title: Text(
                'Update & FAQs ',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: InkWell(
                onTap: () async{
                 await auth.signOut()
                 .then((value) => Get.offAll(()=>const LogIn()));
                },
                child: const Text(
                  'Log Out ',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
