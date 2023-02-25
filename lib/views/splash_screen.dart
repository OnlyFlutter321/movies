import 'package:flutter/material.dart';
import 'package:movies/views/welcome_screen.dart';
import 'package:movies/widgets/assets.dart';
import 'package:movies/widgets/color.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    openLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorHelper.splashColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.shared.spalshImg),
          ],
        ),
        
      ),
    );
  }

  void openLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }
}
