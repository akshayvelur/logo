import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/utils/mediaquery.dart';
import 'package:logo/utils/page_transation.dart';
import 'package:logo/view/form_screeen/bloc/form_details_bloc.dart';
import 'package:logo/view/otp_screen/bloc/otp_bloc.dart';

class SubmitDetailsButtonWidget extends StatelessWidget {
  const SubmitDetailsButtonWidget({super.key,required this.name,required this.phone});
  final String name;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpBloc, OtpState>(
      listener: (context, state) {
        if(state is NavigateToNameState){}
        //Navigator.push(context, FadeTransitionPageRoute(child: FormScreen(phone: ,)));
        // TODO: implement listener
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: ElevatedButton(
          onPressed: () {
           
            context.read<FormDetailsBloc>().add(FormSubmitEvent(name: name, phone: phone));
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
      ),
    );
  }
}
