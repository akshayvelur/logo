import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/view/form_screeen/widget/name_controller_widget.dart';
import 'package:logo/view/form_screeen/widget/submit_details_button.dart';
import 'package:logo/view/otp_screen/widget/back_button_widget.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key,required this.phone});
  final String phone;
  final TextEditingController _nameController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(),
              NameControllerWidget(),
              SubmitDetailsButtonWidget(name: _nameController.text, phone: phone),
            ],
          ),
        ),
      ),
    );
  }
}
