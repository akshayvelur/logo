
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/utils/mediaquery.dart';

// ignore: must_be_immutable
class OtpFieldWidget extends StatelessWidget {
  OtpFieldWidget({
    super.key, required this.otpdigi1, required this.otpdigi2, required this.otpdigi3, required this.otpdigi4, required this.otpError,
  });
   final bool otpError;
  final TextEditingController otpdigi1 ;
  final TextEditingController otpdigi2 ;
  final TextEditingController otpdigi3 ;
  final TextEditingController otpdigi4 ;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(color: const Color(0xFFF6F6F6)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      color: const Color.fromARGB(30, 54, 53, 53),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: mediaqueryWidth(.09, context),
                child: TextFormField(controller: otpdigi1,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.labelLarge,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "0",
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              // 2
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(color: const Color(0xFFF6F6F6)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      color: const Color.fromARGB(30, 54, 53, 53),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: mediaqueryWidth(.09, context),
                child: TextFormField(controller: otpdigi2,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.labelLarge,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "0",
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              // 3
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(color: const Color(0xFFF6F6F6)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      color: const Color.fromARGB(30, 54, 53, 53),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: mediaqueryWidth(.09, context),
                child: TextFormField(controller: otpdigi3,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.labelLarge,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "0",
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              // 4
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(color: const Color(0xFFF6F6F6)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      color: const Color.fromARGB(30, 54, 53, 53),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: mediaqueryWidth(.09, context),
                child: TextFormField(controller: otpdigi4,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.labelLarge,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "0",
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(otpError?"OTP mismatch":"",style: GoogleFonts.oxygen(color: Colors.red,fontSize: 14),),
      )  ],
      ),
    );
  }
}
