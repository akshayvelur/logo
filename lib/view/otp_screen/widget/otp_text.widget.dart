
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpTextWidget extends StatelessWidget {
  const OtpTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Text("OTP VERIFICATION",style: GoogleFonts.oxygen(fontSize: 18,fontWeight: FontWeight.w700,),),
    );
  }
}
