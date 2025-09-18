
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpSampleWidget extends StatelessWidget {
  const OtpSampleWidget({
    super.key,required this.status
  });
  final Map status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Text("OTP is ",style: GoogleFonts.oxygen(fontSize: 15,fontWeight: FontWeight.w700),),
          Text(status['otp'],style: GoogleFonts.oxygen(fontSize: 18,fontWeight: FontWeight.w700,color: const Color(0xFF5E5BE2)),)],
      ),
    );
  }
}
