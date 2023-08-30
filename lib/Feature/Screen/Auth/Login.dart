import 'package:cng/Feature/Widget/CustomButtons/CustomElevatedButtons.dart';
import 'package:cng/Feature/Widget/Format/CustomLoginFieldFormat.dart';
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
            Text(
              login.signIn,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'pop bold'),
            ),
            Text(
              login.signInwelcome,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 16,
                  fontFamily: 'pop reg'),
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    height: 1,
                    width: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                Text(login.or),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    height: 1,
                    width: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
