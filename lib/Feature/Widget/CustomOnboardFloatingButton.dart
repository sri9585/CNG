import 'package:flutter/material.dart';

class CustomOnBoardFloatingBtn extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  const CustomOnBoardFloatingBtn(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 28.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
