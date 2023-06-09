import 'package:flutter/material.dart';
import 'package:rocket_chat/screens/chat_screen.dart';
import 'package:rocket_chat/screens/welcome_screen.dart';
import 'package:rocket_chat/screens/login_screen.dart';
import 'package:rocket_chat/screens/registration_screen.dart';

void main() => runApp(const RocketChat());

class RocketChat extends StatelessWidget {
  const RocketChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen()
      },
    );
  }
}