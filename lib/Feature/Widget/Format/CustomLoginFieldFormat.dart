import 'package:cng/Feature/Widget/CustomTextField/CustomLoginTextField.dart';
import 'package:cng/Feature/Widget/CustomTextField/CustomPasswordTextField.dart';
import 'package:cng/Feature/Widget/Util.dart';
import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class CustomLoginFieldFormat extends StatefulWidget {
  final TextEditingController email;
  final TextEditingController password;
  const CustomLoginFieldFormat(
      {super.key, required this.email, required this.password});

  @override
  State<CustomLoginFieldFormat> createState() => _CustomLoginFieldFormatState();
}

class _CustomLoginFieldFormatState extends State<CustomLoginFieldFormat> {
  Constraint login = Constraint();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              login.email,
            ),
          ),
          CustomLoginEmailField(
            email: widget.email,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              login.password,
            ),
          ),
          CustomLoginPasswordField(
            password: widget.password,
          ),
          GestureDetector(
            onTap: () {
              print(login.forgetPassword);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    login.forgetPassword,
                    style: const TextStyle(
                        color: defaultColor, fontFamily: 'pop reg'),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
