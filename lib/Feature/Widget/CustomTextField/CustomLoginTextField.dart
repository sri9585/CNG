import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class CustomLoginEmailField extends StatefulWidget {
  final TextEditingController email;
  const CustomLoginEmailField({super.key, required this.email});

  @override
  State<CustomLoginEmailField> createState() => _CustomLoginEmailFieldState();
}

class _CustomLoginEmailFieldState extends State<CustomLoginEmailField> {
  Constraint error = Constraint();
  String _emailErrorMessage = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: widget.email,
      decoration: InputDecoration(
          errorText: _emailErrorMessage.isEmpty ? null : _emailErrorMessage,
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10))),
      onChanged: (value) {
        setState(() {
          if (value.contains('@') && value.contains('.com')) {
            _emailErrorMessage = '';
          } else {
            _emailErrorMessage = error.emailErrortxt;
          }
        });
      },
    );
  }
}
