import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Constraint constraint = Constraint();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: Image.asset(
                'assets/OnBoard3.png',
                fit: BoxFit.contain,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              constraint.screenThreedisclaimer,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            constraint.screenThreedisclaimer2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
