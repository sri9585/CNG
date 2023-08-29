import 'package:flutter/material.dart';

class CustomOnBoardFloatingBtn extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  const CustomOnBoardFloatingBtn(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0,
        backgroundColor: Color.fromRGBO(232, 28, 46, 1),
        onPressed: onPressed,
        child: child);
  }
}
