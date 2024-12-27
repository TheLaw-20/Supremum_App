import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/screen/widget/questionContainer2.dart';

class ConcourPage extends StatelessWidget {
  const ConcourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
               Text('Concours',
               style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
               ),),
                  ],
                ),
                SizedBox(height: 20,),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
                QuestionContainer2(),
              ],
            ),
          ),
        ));
  }
}
