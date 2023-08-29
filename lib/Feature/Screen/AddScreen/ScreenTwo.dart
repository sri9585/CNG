import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Constraint constraint = Constraint();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              width: double.infinity,
              child: Image.asset(
                'assets/OnBoard2.png',
                fit: BoxFit.contain,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              constraint.screenTwodisclaimer,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            constraint.screenTwodisclaimer2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
