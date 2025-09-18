
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LetsConnectWidget extends StatelessWidget {
  const LetsConnectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text("Let’s Connect with Lorem Ipsum..!",style: GoogleFonts.manrope(fontSize: 14,fontWeight: FontWeight.w400,color: const Color(0xFF4E4D4D)),),
    );
  }
}

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Text("Login",style: GoogleFonts.oxygen(fontSize: 35,fontWeight: FontWeight.w700),),
    );
  }
}