import 'package:flutter/material.dart';

class CustomLoginEmailField extends StatelessWidget {
  final TextEditingController email;
  const CustomLoginEmailField({super.key, required this.email});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class CustomLoginPasswordField extends StatefulWidget {
  final TextEditingController password;
  const CustomLoginPasswordField({super.key, required this.password});

  @override
  State<CustomLoginPasswordField> createState() =>
      _CustomLoginPasswordFieldState();
}

class _CustomLoginPasswordFieldState extends State<CustomLoginPasswordField> {
  bool _IsShow = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
