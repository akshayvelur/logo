
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyAndPolicyWidget extends StatelessWidget {
  const PrivacyAndPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("By Continuing you accepting the ",style: GoogleFonts.oxygen(fontSize: 10,fontWeight: FontWeight.w300),),
            Text("Terms of Use &",style: GoogleFonts.oxygen(fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.underline),) ],
          ),
        ),
       Text("Privacy Policy",style: GoogleFonts.oxygen(fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.underline),)],
    );
  }
}
