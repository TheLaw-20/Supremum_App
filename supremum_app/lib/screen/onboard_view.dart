import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum_app/authentication/signup.dart';

class OnboardingPage {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;

  OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
  });
}

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  int currentIndex = 0;

  final List<OnboardingPage> pages = [
    OnboardingPage(
      imagePath: 'https://cdn.dribbble.com/users/2221077/screenshots/9023543/media/6ce82cc4d9dad08514cdd9fdf2cddd7d.jpg', // Add your image path
      title: 'Past questions Solutions and quizzes',
      description:
          'Get access to Past questions Solutions and quizzes Get access to Past questions Solutions and quizzes.',
      buttonText: 'Next',
    ),
    OnboardingPage(
      imagePath: 'https://static.vecteezy.com/system/resources/previews/025/668/850/non_2x/kid-using-smartphone-with-application-floating-icon-social-network-chat-message-internet-flat-style-illustration-vector.jpg',
      title: 'Career Orientation',
      description:
          'Explore career options with detailed info on \nfields, job prospects, and qualifications to \nhelp you decide.',
      buttonText: 'Next',
    ),
    OnboardingPage(
      imagePath: 'https://img.freepik.com/premium-vector/online-support-technical-chat-messaging_88272-4670.jpg',
      title: 'Professional schools, and \nUniversities',
      description:
          'Get access to Past questions Solutions and quizzes Get access to Past questions Solutions and quizzes.',
      buttonText: 'Get started',
    ),
  ];

  void nextPage() {
    if (currentIndex < pages.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      // Navigate to the SignupPage
      Get.to(SignupPage());
    }
  }

  void skip() {
    // Navigate directly to the SignupPage
    Get.to(SignupPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Skip Button
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: skip,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Onboarding Image
              Expanded(
                child: Image.network(
                  pages[currentIndex].imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),
              // Title
              Text(
                pages[currentIndex].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              // Description
              Text(
                pages[currentIndex].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 24),
              // Page Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pages.length,
                  (index) => AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    height: 8,
                    width: currentIndex == index ? 16 : 8,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.red
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Button
              GestureDetector(
                onTap: nextPage,
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          pages[currentIndex].buttonText,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
