import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/forgotPassword.dart';
import 'package:supremum_app/authentication/signup.dart';
import 'package:supremum_app/authentication/widget/container.dart';
import 'package:supremum_app/authentication/widget/textfield.dart';
import 'package:supremum_app/route/navigation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.red, Colors.redAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Log In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(hinttext: 'Email', icon: Icons.email_outlined),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: 'Password', icon: Icons.lock_outlined),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(value: false, onChanged: (value) {}),
                Text('Remember me'),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ForgotPassword());
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.to(const NavigationPage());
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 125,
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text('or'),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 125,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomContainer(text: 'Continue with Google'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account yet?"),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SignupPage());
                },
                child: Text(
                  'Sign up',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
