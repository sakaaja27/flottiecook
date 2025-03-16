import 'package:flottiecook/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingOne extends StatefulWidget {
  @override
  State<BoardingOne> createState() => _IntroScreenDemoState();
}

class _IntroScreenDemoState extends State<BoardingOne> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        isLastPage = controller.page == 1;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(bottom: 250),
          child: PageView(
            controller: controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/onboardingone.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "Let’s Cooking ",
                          style: GoogleFonts.aDLaMDisplay(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "everyday",
                          style: GoogleFonts.aDLaMDisplay(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/onboardingtwo.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "find the recipe for the dish you want to cook today",
                          style: GoogleFonts.aDLaMDisplay(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 100,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 80),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotColor: Color.fromARGB(255, 254, 202, 255),
                    activeDotColor: Color.fromARGB(255, 246, 128, 222),
                  ),
                  onDotClicked: (index) {
                    if (!isLastPage) {
                      controller.animateToPage(
                        index,
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  if (isLastPage) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  } else {
                    controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text(
                  'Next',
                  style: GoogleFonts.agbalumo(
                    fontSize: 20,
                    color: Color.fromARGB(255, 246, 128, 222),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
