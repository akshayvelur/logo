import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logo/utils/page_transation.dart';
import 'package:logo/view/login_screen/bloc/login_bloc.dart';
import 'package:logo/view/login_screen/widgets/continue_button_widget.dart';
import 'package:logo/view/login_screen/widgets/login_and_letsconnect_widget.dart';
import 'package:logo/view/login_screen/widgets/phone_editing_widget.dart';
import 'package:logo/view/login_screen/widgets/privacy_policy_widget.dart';
import 'package:logo/view/otp_screen/otp_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is UserToOtpState) {
          
          Navigator.push(
            context,
            FadeTransitionPageRoute(
              child: OtpScreen(phone: _phoneNumber.text.toString(),status: state.status,),
            ),
          );
        }
       
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginTextWidget(),
                    LetsConnectWidget(),
                    PhoneNumberTextEditingWidget(phoneNumber: _phoneNumber),
                    ContinueButtonwidget(
                      formKey: _formKey,
                      phone: _phoneNumber,
                    ),
                    PrivacyAndPolicyWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
