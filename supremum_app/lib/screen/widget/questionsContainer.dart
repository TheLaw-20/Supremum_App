import 'package:flutter/material.dart';

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade100,
            boxShadow: [
              BoxShadow(blurRadius: 2, offset: Offset(1, 1), color: Colors.grey)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Mathematics - 2018',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Image.network('https://jsjd.info/wp-content/uploads/2022/01/1486565571-pdfw.png',
                      height: 20,width: 20,),
                      SizedBox(width: 20,),
                      Text('FET Buea'),
                      SizedBox(width: 150,),
                      Row(
                        children: [
                          Icon(
                            Icons.download,
                            size: 15,
                          ),
                          Text(
                            '200',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
