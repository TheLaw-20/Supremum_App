import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image with rounded corners on top
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        child: Image.network(
                          'https://img.freepik.com/free-photo/kids-playing-outdoors_23-2149218025.jpg?t=st=1735326652~exp=1735330252~hmac=b83fd6dda96790326fdcbf500f8b4cc076a4413c46e74d30dd689f348ba4fcd5&w=1060', // Replace with the URL or local path of your image
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Location tag
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 12,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Buea',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 5,
                        child:
                            Text(
                              'FET - Faculty of Engineering and Technology',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        );
  }
}
