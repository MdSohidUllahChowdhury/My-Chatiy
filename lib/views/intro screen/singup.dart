import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/login.dart';
import 'package:my_chatiy/widgets/form.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _formkey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text(
            "Welcome To MYChatiy",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
            ),
          ),
          const SizedBox(height: 8),
          const Text("Create a Account to Get Free Use",style: TextStyle(color: Colors.white),),
          const SizedBox(height: 12),
         const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 140,
              child: CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage('lib/assets/images/appLogo.png'),
              ),
            ),
          const SizedBox(height: 12),
          Form(
              key: _formkey,
              child: Column(
                children: [
                  const FormSection(
                    nameit: 'Frist Name',
                    isMust: true,
                  ),
                  const SizedBox(height: 4),
                  const FormSection(
                    nameit: 'Last Name',
                    isMust: true,
                  ),
                  const SizedBox(height: 4),
                  const FormSection(
                    nameit: 'Email',
                    isMust: true,
                  ),
                  const SizedBox(height: 4),
                  const FormSection(
                    nameit: 'Password',
                    ispassword: true,
                    isMust: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Get.offAll(() => const LogIn());
                        }
                      },
                      style: TextButton.styleFrom(
                          minimumSize: const Size(260, 50),
                          backgroundColor: Colors.orangeAccent.shade400),
                      child: const Text('Confirm',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1.2,
                            color: Colors.black,
                          ))),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already Have An Account?",
                style: TextStyle(fontSize: 10,color: Colors.white),
              ),
              TextButton(
                onPressed: () => Get.to(() => const LogIn()),
                child: const Text(
                  "LogIn",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ]));
  }
}
