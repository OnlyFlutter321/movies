import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/views/LoginScreen.dart';
import 'package:movies/views/location.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/assets.dart';
import '../widgets/build_textfiled.dart';
import '../widgets/color.dart';
import '../widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      // bottomSheet: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Container(
      //     height: 30,
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             const Expanded(
      //               child: Text(
      //                 "By signing up you agree to our",
      //                 style: TextStyle(
      //                   color: Colors.grey,
      //                   fontSize: 12,
      //                 ),
      //               ),
      //             ),
      //             TextButton(
      //               style: TextButton.styleFrom(
      //                 minimumSize: const Size(60, 0),
      //                 padding: EdgeInsets.zero,
      //                 visualDensity: VisualDensity.compact,
      //                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //                 elevation: 0,
      //               ),
      //               child: const Text(
      //                 "Terms and Condtions",
      //                 style: TextStyle(
      //                   color: Colors.blue,
      //                   fontSize: 12,
      //                 ),
      //               ),
      //               onPressed: () {},
      //             ),
      //           ],
      //         ),
      //         const Text(
      //           "of using this app",
      //           style: TextStyle(
      //             color: Colors.grey,
      //             fontSize: 12,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
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
                  "Signup",
                  style: GoogleFonts.ptMono(
                    color: ColorHelper.white,
                    fontSize: 28,
                  ),
                ),
              ),
              20.heightBox,
              Text(
                "we need to know your location so that we could",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              5.heightBox,
              Text(
                "filter and show you available cinemas around you.",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              20.heightBox,
              buildTextfiled(
                tx: fullNameController,
                backgroundColor: const Color(0xFF3D3D3D),
                label: 'FullName',
                color: ColorHelper.white,
              ),
              buildTextfiled(
                tx: emailController,
                backgroundColor: const Color(0xFF3D3D3D),
                color: ColorHelper.white,
                label: 'Email address',
              ),
              buildTextfiled(
                tx: passwordController,
                backgroundColor: const Color(0xFF3D3D3D),
                color: ColorHelper.white,
                label: 'Password',
                pr: const Icon(
                  Icons.remove_red_eye,
                  color: ColorHelper.white,
                ),
              ),
              buildTextfiled(
                tx: confirmController,
                backgroundColor: const Color(0xFF3D3D3D),
                color: ColorHelper.white,
                label: 'Confirm Password',
                pr: const Icon(
                  Icons.remove_red_eye,
                  color: ColorHelper.white,
                ),
              ),
              50.heightBox,
              RoundedButton(
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const Location()));
                },
                text: 'Next',
                backgroundColor: ColorHelper.red,
                foregroundColor: ColorHelper.white,
              ),
              16.heightBox,
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account?  ",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: const TextStyle(
                          color: Color(0xFF60CFFF),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) => const LoginScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),

              // Spacer(
              //   flex: 1,
              // ),

              // Expanded(
              //   child: Row(
              //     children: [
              //       Text(
              //         "By signing up you agree to our",
              //         style: GoogleFonts.ptMono(
              //           color: ColorHelper.grey,
              //           fontSize: 12,
              //         ),
              //       ),
              //       TextButton(
              //         style: TextButton.styleFrom(
              //           minimumSize: const Size(60, 0),
              //           padding: EdgeInsets.zero,
              //           visualDensity: VisualDensity.compact,
              //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //           elevation: 0,
              //         ),
              //         child: Text(
              //           "Terms and Condtions of using this app",
              //           style: GoogleFonts.ptMono(
              //             color: ColorHelper.blue,
              //             fontSize: 9,
              //           ),
              //         ),
              //         onPressed: () {},
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {},
                    child: Text(
                      "By signing up you agree to our ",
                      style: GoogleFonts.ptMono(
                        color: ColorHelper.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Terms and Conditions",
                      style: GoogleFonts.ptMono(
                        color: ColorHelper.blue,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {},
                    child: Text(
                      "of using this app",
                      style: GoogleFonts.ptMono(
                        color: ColorHelper.white,
                        fontSize: 10,
                      ),
                    ),
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
