import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'screens/login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red[500],
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a 5-second delay using Future.delayed
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to HomeScreen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: AnimatedTextKit(
  animatedTexts: [
    TypewriterAnimatedText(
      'Blood Link',
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      speed: const Duration(milliseconds: 20),
    ),
    RotateAnimatedText('Loading...',textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),),
  ],
  
  totalRepeatCount: 100,
  // pause: const Duration(milliseconds: 1000),
  // displayFullTextOnTap: true,
  // stopPauseOnTap: true,
),
          // Replace with your loading image
        ),
      ),
    );
  }
}

