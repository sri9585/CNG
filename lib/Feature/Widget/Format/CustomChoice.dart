import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class CustomChoice extends StatelessWidget {
  CustomChoice({super.key});
  Constraint login = Constraint();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
            height: 0.5,
            width: MediaQuery.of(context).size.height * 0.19,
          ),
        ),
        Text(login.or),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
            height: 0.5,
            width: MediaQuery.of(context).size.height * 0.19,
          ),
        ),
      ],
    );
  }
}
