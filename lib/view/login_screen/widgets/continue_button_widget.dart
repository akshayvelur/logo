
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/utils/mediaquery.dart';
import 'package:logo/view/login_screen/bloc/login_bloc.dart';
import 'package:provider/provider.dart';

class ContinueButtonwidget extends StatelessWidget {
  const ContinueButtonwidget({
    super.key,
    required GlobalKey<FormState> formKey,required this.phone
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
final TextEditingController phone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
               context.read<LoginBloc>().add(LoginActionEvent(phone:phone.text ));
          }
       
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
            "Continue",
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
