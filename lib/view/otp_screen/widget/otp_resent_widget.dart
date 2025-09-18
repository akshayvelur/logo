
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpResentWidget extends StatelessWidget {
  const OtpResentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Align(alignment: Alignment.center,
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don’t receive code ?",style: GoogleFonts.oxygen(fontSize: 14,fontWeight: FontWeight.w400),),
             Text(" Re-send",style: GoogleFonts.oxygen(fontSize: 14,fontWeight: FontWeight.w700,color: const Color(0xFF00E5A4)),)
          ],
        ),
      ),
    );
  }
}
