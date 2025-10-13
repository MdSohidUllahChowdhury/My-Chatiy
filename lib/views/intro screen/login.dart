import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_chatiy/views/intro%20screen/singup.dart';
import 'package:my_chatiy/views/main%20screen/home_screen.dart';
import 'package:my_chatiy/widgets/form.dart';
import 'package:my_chatiy/widgets/tost.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final auth = FirebaseAuth.instance;

    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text(
            "Welcome To MYChatiy Your AI Assistent",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
            ),
          ),
          const SizedBox(height: 8),
          const Text("MYChatiy is ready to help you",style: TextStyle(color: Colors.white),),
          const SizedBox(height: 16),
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
                   FormSection(
                    authControler:email ,
                    nameit: 'Email',
                    isMust: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FormSection(
                    authControler:password ,
                    nameit: 'Password',
                    ispassword: true,
                    isMust: true,
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: () async{
                        if (formkey.currentState!.validate()){
                          try{
                          await auth.signInWithEmailAndPassword(
                            email: email.text.trim(), 
                            password: password.text.trim()).then((onValue){
                              TostMessage().errorMessage(onValue.user!.email.toString());
                            });
                          Get.offAll(() => const BotScreen());
                          }catch(error){
                            TostMessage().errorMessage(error.toString());
                          }
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent.shade400,
                        minimumSize: const Size(260, 50),
                      ),
                      child: const Text("LogIn",
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color: Colors.black))),
                ],
              )),
          const SizedBox(height: 12),
          const Text(
            "Don't Have An Account?",
            style: TextStyle(fontSize: 10,color: Colors.white),
          ),
          TextButton(
            onPressed: () => Get.to(() => const SingUp()),
            child: const Text(
              "SingUp",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ]));
  }
}
