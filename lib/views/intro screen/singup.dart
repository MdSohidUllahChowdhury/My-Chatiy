import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/firebase/database.dart';
import 'package:my_chatiy/views/intro%20screen/login.dart';
import 'package:my_chatiy/widgets/form.dart';
import 'package:my_chatiy/widgets/tost.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    final formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final firstName = TextEditingController();
    final lastName = TextEditingController();

    Future<void> userInfoToDataBase() async {
      Map<String, dynamic> userDetails = {
        "First Name": firstName.text,
        "Last Name": lastName.text,
        "Email": emailController.text,
      };
      //String id = randomAlphaNumeric(10);
      final User? user = FirebaseAuth.instance.currentUser;
      await CallDataBase().singUpUserInfo(userDetails, user!.uid);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Successfully Signed Up")),
      );
    }

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
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                "Create a Account to Get Free Use",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 12),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                child: CircleAvatar(
                  radius: 96,
                  backgroundImage: AssetImage('lib/assets/images/appLogo.png'),
                ),
              ),
              const SizedBox(height: 12),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      FormSection(
                        nameit: 'Frist Name',
                        isMust: true,
                        authControler: firstName,
                      ),
                      const SizedBox(height: 4),
                      FormSection(
                        nameit: 'Last Name',
                        isMust: true,
                        authControler: lastName,
                      ),
                      const SizedBox(height: 4),
                      FormSection(
                        nameit: 'Email',
                        isMust: true,
                        authControler: emailController,
                      ),
                      const SizedBox(height: 4),
                      FormSection(
                        nameit: 'Password',
                        ispassword: true,
                        isMust: true,
                        authControler: passwordController,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              try {
                                await auth.createUserWithEmailAndPassword(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim());
                                // save additional user info to Firestore
                                await userInfoToDataBase();
                                // navigate to login screen
                                Get.offAll(() => const LogIn());
                              } catch (error) {
                                TostMessage().errorMessage(error.toString());
                              }
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
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => const LogIn()),
                    child: const Text(
                      "LogIn",
                      style:
                          TextStyle(fontSize: 12, color: Colors.orangeAccent),
                    ),
                  ),
                ],
              ),
            ]));
  }
}
