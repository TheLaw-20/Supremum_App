import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/login.dart';
import 'package:supremum_app/route/navigation.dart';
import 'package:supremum_app/screen/widget/questionsContainer.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                'Share app',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(Icons.contacts_outlined),
              title: Text(
                'Contact us',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(Icons.language_rounded),
              title: Text(
                'Language',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: GestureDetector(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: Text(
                  'Logout',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
                ),
              ),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(NavigationPage());
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Back',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 248, 231, 231),
                        border: Border.all(color: Colors.redAccent),
                      ),
                      child: Center(child: Text('Questions')),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(child: Text('Pamphlets')),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.filter_list_outlined))
                ],
              ),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
              QuestionContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
