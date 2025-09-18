
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpTimerWidget extends StatelessWidget {
  const OtpTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(alignment: Alignment.center,child: Text("00:120 Sec",style: GoogleFonts.oxygen(fontSize: 14,fontWeight: FontWeight.w400),)),
            );
  }
}
