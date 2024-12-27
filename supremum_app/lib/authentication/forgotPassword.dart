import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/login.dart';
import 'package:supremum_app/authentication/verification.dart';
import 'package:supremum_app/authentication/widget/textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Select either email or SMS to receive your \npassword reset verification code.'),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Via Email',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.message_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Via SMS',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: 'Email',
            icon: Icons.email_outlined,
          ),
          const SizedBox(
            height: 35,
          ),
          GestureDetector(
            onTap: () {
              Get.to(VerificationPage());
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Center(
                child: Text(
                  'Send verification code',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
