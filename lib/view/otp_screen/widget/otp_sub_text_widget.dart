
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpSubTextWidget extends StatelessWidget {
  const OtpSubTextWidget({
    super.key,
    required this.phone,
  });

  final String phone;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text(
            "Enter the OTP sent to - ",
            style: GoogleFonts.oxygen(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "+91-$phone",
            style: GoogleFonts.oxygen(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
