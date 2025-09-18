
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberTextEditingWidget extends StatelessWidget {
  const PhoneNumberTextEditingWidget({
    super.key,
    required TextEditingController phoneNumber,
  }) : _phoneNumber = phoneNumber;

  final TextEditingController _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 66),
      child: TextFormField(
        controller: _phoneNumber,autovalidateMode:AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Text(
              "+91",
              style: GoogleFonts.oxygen(fontSize: 14),
            ),
          ),
          hintText: "Enter phone",
          hintStyle: GoogleFonts.oxygen(fontSize: 14),
    
          prefixIconConstraints: BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          counterText: "",
        ),
        keyboardType: TextInputType.phone,
        maxLength: 10,
        style: GoogleFonts.oxygen(fontSize: 14),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter phone number";
          } else if (value.length != 10) {
            return "Phone number must be 10 digits";
          } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
            return "Only digits allowed";
          }
          return null; // valid
        },
      ),
    );
  }
}
