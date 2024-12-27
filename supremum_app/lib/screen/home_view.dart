import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/screen/card/largeCard.dart';
import 'package:supremum_app/screen/card/miniCard.dart';
import 'package:supremum_app/screen/concour_view.dart';
import 'package:supremum_app/screen/questions_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Njita',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Glad to see you here!'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(ConcourPage());
                  },
                  child: MiniCard(
                    color: const Color.fromARGB(255, 248, 231, 231),
                    color2: Colors.red,
                    text: ('Concours'),
                    color1: Colors.redAccent,
                    icon: Icons.send_sharp,
                    color3: Colors.redAccent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(QuestionPage());
                  },
                  child: MiniCard(
                    color: const Color.fromARGB(255, 210, 221, 239),
                    color2: Colors.blue,
                    text: ('Questions'),
                    color1: Colors.blueAccent,
                    icon: Icons.description_outlined,
                    color3: Colors.blueAccent,
                  ),
                ),
                MiniCard(
                  color: const Color.fromARGB(255, 249, 239, 226),
                  color2: Colors.orange,
                  text: ('Quiz'),
                  color1: Colors.orangeAccent,
                  icon: Icons.timer_outlined,
                  color3: Colors.orangeAccent,
                ),
                MiniCard(
                  color: const Color.fromARGB(255, 235, 250, 235),
                  color2: Colors.green,
                  text: ('Universities'),
                  color1: Colors.green,
                  icon: Icons.school_outlined,
                  color3: Colors.green,
                ),
                MiniCard(
                  color: const Color.fromARGB(255, 242, 229, 245),
                  color2: Colors.purpleAccent,
                  text: ('Tutorials'),
                  color1: Colors.purpleAccent,
                  icon: Icons.menu_book_outlined,
                  color3: Colors.purpleAccent,
                ),
                MiniCard(
                  color: const Color.fromARGB(255, 215, 235, 245),
                  color2: Colors.lightBlue,
                  text: ('Help'),
                  color1: Colors.lightBlue,
                  icon: Icons.help_outline,
                  color3: Colors.lightBlue,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcoming concours',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            CustomScrollView(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10, // Added vertical spacing
                      /*  childAspectRatio: 0.75,  */
                    ),
                    delegate: SliverChildListDelegate([
                      LargeCard(),
                      LargeCard(),
                    ]),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most popular university',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            CustomScrollView(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10, // Added vertical spacing
                    ),
                    delegate: SliverChildListDelegate([
                      LargeCard(),
                      LargeCard(),
                    ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
