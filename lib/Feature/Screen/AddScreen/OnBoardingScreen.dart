import 'package:cng/Feature/Screen/AddScreen/ScreenOne.dart';
import 'package:cng/Feature/Screen/AddScreen/ScreenThree.dart';
import 'package:cng/Feature/Screen/AddScreen/ScreenTwo.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _skip
                    ? CustomOnBoardFloatingBtn(
                        onPressed: () {}, child: const Text('Skip'))
                    : CustomOnBoardFloatingBtn(
                        onPressed: () {
                          _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        child: const Icon(Icons.arrow_back)),
                SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: 3,
                  effect: const JumpingDotEffect(),
                ),
                _lastPage
                    ? CustomOnBoardFloatingBtn(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        child: const Text('done'))
                    : CustomOnBoardFloatingBtn(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        child: const Icon(Icons.arrow_forward)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
