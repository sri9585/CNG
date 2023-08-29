import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
                'assets/OnBoard1.png',
                fit: BoxFit.contain,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              constraint.screenOnedisclaimer,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            constraint.screenOnedisclaimer2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
