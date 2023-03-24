import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(),
              const SizedBox(
                height: 150.0,
              ),
              Column(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: SizedBox(
                      height: 200.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: kInputTextDecoration.copyWith(hintText: 'Enter your email', )
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                      decoration: kInputTextDecoration.copyWith(hintText: 'Enter your password')
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  RoundedButton(
                    buttonColor: const Color(0xffffb200),
                    buttonText: 'Log In',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}