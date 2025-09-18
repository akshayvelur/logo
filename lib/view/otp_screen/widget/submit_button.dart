import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/utils/mediaquery.dart';
import 'package:logo/utils/page_transation.dart';
import 'package:logo/view/form_screeen/form_screen.dart';
import 'package:logo/view/otp_screen/bloc/otp_bloc.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({super.key,required this.phone, required this.otpdigi1, required this.otpdigi2, required this.otpdigi3, required this.otpdigi4, required this.status});
 final String phone;
  final TextEditingController otpdigi1 ;
  final TextEditingController otpdigi2 ;
  final TextEditingController otpdigi3 ;
  final TextEditingController otpdigi4 ;
  final Map status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: ElevatedButton(
        onPressed: () {
          context.read<OtpBloc>().add(OtpToNavigateEvent(otpdigi1: otpdigi1.text,otpdigi2: otpdigi2.text,otpdigi3: otpdigi3.text,otpdigi4: otpdigi4.text,clintStatus:status ));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            mediaqueryWidth(1, context),
            mediaqueryHeight(.06, context),
          ),
          backgroundColor: const Color(0xFF5E5BE2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            "Submit",
            style: GoogleFonts.oxygen(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
