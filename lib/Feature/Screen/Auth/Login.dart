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
                  //fontWeight: FontWeight.bold,
                  fontFamily: 'pop reg'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    login.email,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
