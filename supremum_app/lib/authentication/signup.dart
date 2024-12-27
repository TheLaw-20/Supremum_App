import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/login.dart';
import 'package:supremum_app/authentication/widget/container.dart';
import 'package:supremum_app/authentication/widget/textfield.dart';
import 'package:supremum_app/route/navigation.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hinttext: 'Full name', icon: Icons.person_2_outlined),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: 'Email', icon: Icons.email_outlined),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: 'Phone number', icon: Icons.phone_outlined),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: 'Password', icon: Icons.lock_outlined),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to(NavigationPage());
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
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
              SizedBox(
                width: 15,
              ),
              Text('or'),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 125,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomContainer(text: 'Sign up with Google'),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Get.to(NavigationPage());
              },
              child: CustomContainer(text: 'Continue as Guest')),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?'),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: Text(
                  'Log in',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
