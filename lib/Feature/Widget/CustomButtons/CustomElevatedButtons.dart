import 'package:cng/Feature/Widget/Util.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5)),
            backgroundColor: defaultColor,
            minimumSize: const Size(320, 50)),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
