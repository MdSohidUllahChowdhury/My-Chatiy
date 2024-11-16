import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/login.dart';
import 'package:my_chatiy/widgets/form.dart';
import 'package:my_chatiy/widgets/tost.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;

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
                radius: 140,
                child: CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage('lib/assets/images/appLogo.png'),
                ),
              ),
              const SizedBox(height: 12),
              Form(
                  key: formkey,
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
                          onPressed: () async{
                            if (formkey.currentState!.validate()) {
                              
                            try {
                              await auth.createUserWithEmailAndPassword(
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim());
                                   Get.offAll(() => const LogIn());
                            }catch(error){
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
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ]));
  }
}
