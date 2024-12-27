import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/forgotPassword.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                      Get.to(ForgotPassword());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Verification',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Please enter the 4-digit verification code that has\nbeen sent to your email below.'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none)),
                  ),
                ),
               SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Center(
              child: Text("if you haven't received any code yet,",
                  style: TextStyle(fontWeight: FontWeight.w300))),
          Center(
              child: Text('Resend again',
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w500))),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.red),
            child: Center(
              child: Text(
                'Verify',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
