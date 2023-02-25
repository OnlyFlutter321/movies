import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/views/location.dart';
import 'package:movies/views/signup_screen.dart';
import 'package:movies/widgets/color.dart';
import 'package:movies/widgets/rounded_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/build_textfiled.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: ColorHelper.splashColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    color: ColorHelper.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Skip",
                      style: GoogleFonts.ptMono(
                        color: ColorHelper.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            key: formKey,
            children: [
              Center(
                child: Text(
                  "Login",
                  style: GoogleFonts.ptMono(
                    color: ColorHelper.white,
                    fontSize: 28,
                  ),
                ),
              ),
              20.heightBox,
              Text(
                "Welcome back buddy, login to get started",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              5.heightBox,
              Text(
                "with our awesome features",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              20.heightBox,
              buildTextfiled(
                tx: emailController,
                backgroundColor: const Color(0xFF3D3D3D),
                label: 'email',
                color: ColorHelper.white,
              ),
              buildTextfiled(
                tx: passwordController,
                backgroundColor: const Color(0xFF3D3D3D),
                color: ColorHelper.white,
                label: 'password',
                pr: const Icon(Icons.remove_red_eye),
              ),
              Row(
                children: [
                  8.widthBox,
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password ?",
                      style: TextStyle(
                        color: Color(0xFF60CFFF),
                      ),
                    ),
                  ),
                ],
              ),
              50.heightBox,
              RoundedButton(
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const Location()));
                },
                text: 'Get Started',
                backgroundColor: ColorHelper.red,
                foregroundColor: ColorHelper.white,
              ),
              16.heightBox,
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const SignupScreen()));
                },
                child: const Text(
                  "Don’t have an account yet? SignUp",
                  style: TextStyle(
                    color: Color(0xFF60CFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
