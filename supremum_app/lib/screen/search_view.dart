import 'package:flutter/material.dart';
import 'package:supremum_app/authentication/widget/textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CustomTextField(
                  hinttext: 'Search',
                  icon: Icons.search_outlined,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
