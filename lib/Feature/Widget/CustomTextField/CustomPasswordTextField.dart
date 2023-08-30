import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class CustomLoginPasswordField extends StatefulWidget {
  final TextEditingController password;
  const CustomLoginPasswordField({super.key, required this.password});

  @override
  State<CustomLoginPasswordField> createState() =>
      _CustomLoginPasswordFieldState();
}

class _CustomLoginPasswordFieldState extends State<CustomLoginPasswordField> {
  Constraint error = Constraint();
  String _passwordErrorMessage = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      controller: widget.password,
      decoration: InputDecoration(
          errorText:
              _passwordErrorMessage.isEmpty ? null : _passwordErrorMessage,
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10))),
      onChanged: (value) {
        setState(() {
          if (value.length >= 8) {
            _passwordErrorMessage = '';
          } else {
            _passwordErrorMessage = error.passwordErrortxt;
          }
        });
      },
    );
  }
}
