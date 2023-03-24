import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rocket_chat/constants.dart';
import 'package:rocket_chat/screens/login_screen.dart';
import 'package:rocket_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 300.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    ColorizeAnimatedText(
                        'Rocket Chat',
                        textStyle: const TextStyle(
                            fontFamily: 'PressStart',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0f3041)),
                        colors: [kThemeColor1, kThemeColor2, kThemeColor3],
                        speed: const Duration(milliseconds: 600),
                        textDirection: TextDirection.ltr
                    ),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              buttonColor: const Color(0xffffb200),
              buttonText: 'Log In',
              onTap: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
            RoundedButton(
              buttonColor: const Color(0xfff05c42),
              buttonText: 'Register',
              onTap: () => Navigator.pushNamed(context, RegistrationScreen.id),
            ),
          ],
        ),
      ),
    );
  }
}
