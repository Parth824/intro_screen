import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introduction_Saccrn extends StatefulWidget {
  const Introduction_Saccrn({super.key});

  @override
  State<Introduction_Saccrn> createState() => _Introduction_SaccrnState();
}

class _Introduction_SaccrnState extends State<Introduction_Saccrn> {
  late SharedPreferences sharedPreferences;

  dates() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dates();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/t1.jpg"),
        IntroductionScreen(
          pages: [
            PageViewModel(
              // bodyWidget: Image.asset("assets/images/t1.jpg"),

              image: Image.asset(
                "assets/images/pr3.png",
                width: 350,
              ),
              title: "Welcome",
              body:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit duis in imperdiet augue,eget velit.",
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                ),
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(24),
              ),
            ),
            PageViewModel(
              // bodyWidget: Image.asset("assets/images/t1.jpg"),

              image: Image.asset(
                "assets/images/pr2.png",
                width: 350,
              ),
              title: "Organic Food",
              body:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit duis in imperdiet augue,eget velit.",
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                ),
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(24),
              ),
            ),
            PageViewModel(
              image: Image.asset(
                "assets/images/pr1.png",
                width: 350,
              ),
              title: "Fresh Fruits",
              body:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit duis in imperdiet augue,eget velit.",
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                ),
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(24),
              ),
            ),
          ],
          next: Text("Next"),
          showNextButton: true,
          done: Text("Done"),
          onDone: () {
            sharedPreferences.setBool("sp", true);
            Navigator.of(context).pushReplacementNamed("home");
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Theme.of(context).colorScheme.secondary,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          globalBackgroundColor: Colors.white,
        ),
      ],
    );
  }
}
