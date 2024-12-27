import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text('Downloads')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 160,
            ),
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.download_outlined,
                    color: Colors.purple,
                    size: 100,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'You currently have no downloads',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Check out the questions page to subscribe to our \ncontent or download past questions',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
