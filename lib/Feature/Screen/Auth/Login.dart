import 'package:cng/Feature/Screen/Auth/SignUp.dart';
import 'package:cng/Feature/Widget/CustomButtons/CustomElevatedButtons.dart';
import 'package:cng/Feature/Widget/Format/CustomChoice.dart';
import 'package:cng/Feature/Widget/Format/CustomLoginContent.dart';
import 'package:cng/Feature/Widget/Format/CustomLoginFieldFormat.dart';
import 'package:cng/Feature/Widget/Format/SocialMediaAuth.dart';
import 'package:cng/Feature/Widget/Util.dart';
import 'package:cng/constraint/Additional.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const route = '/Login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Constraint login = Constraint();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLoginContent(),
            CustomLoginFieldFormat(
              email: _emailController,
              password: _passwordController,
            ),
            CustomElevatedButton(
                onPressed: () {
                  print(_emailController.text);
                  print(_passwordController.text);
                },
                child: Text(login.signIn)),
            CustomChoice(),
            const SocialMediaAuth(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  login.signIntoSignUp,
                  style: const TextStyle(fontFamily: 'pop reg'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUp.route);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.5),
                    child: Text(
                      login.signUp,
                      style: const TextStyle(
                          color: defaultColor, fontFamily: 'pop med'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
