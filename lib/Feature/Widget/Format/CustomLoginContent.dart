import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class CustomLoginContent extends StatelessWidget {
  Constraint login = Constraint();
  CustomLoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              login.signIn,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'pop bold'),
            ),
          ),
          Text(
            login.signInwelcome,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.65),
                fontSize: 16,
                fontFamily: 'pop reg'),
          ),
        ],
      ),
    );
  }
}
