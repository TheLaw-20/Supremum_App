import 'package:flutter/material.dart';
import 'package:supremum_app/authentication/widget/textfield.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
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
              SizedBox(height: 20,),
              Text('Make sure your new password is different from \nthe previously used old one'),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: 'Enter new password',
            icon: Icons.lock_outlined,
          ),
          SizedBox(height: 20,),
          CustomTextField(hinttext: 'Confirm new password', icon: Icons.lock_outlined),
          const SizedBox(
            height: 35,
          ),
          GestureDetector(
            onTap: () {
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Center(
                child: Text(
                  'Reset password',
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