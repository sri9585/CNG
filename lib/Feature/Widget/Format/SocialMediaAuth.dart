import 'package:flutter/material.dart';

class SocialMediaAuth extends StatelessWidget {
  const SocialMediaAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset(
                'assets/Icons/google.png',
                height: 10,
                width: 10,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset(
                'assets/Icons/facebook.png',
                height: 10,
                width: 10,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset(
                'assets/Icons/guest.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
