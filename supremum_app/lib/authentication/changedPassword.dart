import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/login.dart';

class ChangedPasswordPage extends StatelessWidget {
  const ChangedPasswordPage({super.key});

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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Reset password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.check_circle_outline,
            color: Colors.green,
            size: 120,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Your password was reset'),
          Text('successfully'),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Get.to(LoginPage());
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Center(
                child: Text(
                  'Continue',
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
