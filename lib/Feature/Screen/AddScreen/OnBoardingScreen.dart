import 'package:cng/Feature/Screen/AddScreen/ScreenOne.dart';
import 'package:cng/Feature/Screen/AddScreen/ScreenThree.dart';
import 'package:cng/Feature/Screen/AddScreen/ScreenTwo.dart';
import 'package:cng/Feature/Screen/Auth/Login.dart';
import 'package:cng/Feature/Widget/CustomOnboardFloatingButton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool _lastPage = false;
  bool _skip = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _lastPage = (index == 2);
                _skip = (index == 0);
              });
            },
            controller: _controller,
            children: const [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: 3,
                  effect: const JumpingDotEffect(
                      verticalOffset: 10,
                      dotColor: Colors.black12,
                      activeDotColor: Colors.redAccent),
                ),
                _lastPage
                    ? CustomOnBoardFloatingBtn(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Login.route);
                        },
                        child: const Text(
                          'done',
                          style: TextStyle(color: Colors.white),
                        ))
                    : CustomOnBoardFloatingBtn(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.linear);
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
