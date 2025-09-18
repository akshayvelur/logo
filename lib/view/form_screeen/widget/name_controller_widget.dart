
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameControllerWidget extends StatelessWidget {
  const NameControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter Full Name",
          hintStyle: GoogleFonts.oxygen(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
