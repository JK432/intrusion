import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../Functions/auth.dart';
import '../Functions/colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgd,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("HIDS",
              style: GoogleFonts.anton(
                  fontSize: 100, color: Palette.main)),
          SizedBox(height:100 ,),
          Center(
            child: SignInButton(
              Buttons.google,
              text: "Sign up with Google",
              onPressed: () {
                Authentication().signIn(context);
              },
            ),
            // child: Text("Google Login.",
            //     style: GoogleFonts.signikaNegative(
            //         fontSize: 40.0, color: Palette.main)),
          )
        ],
      ),
    );
  }
}
