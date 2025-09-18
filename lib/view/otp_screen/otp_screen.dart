import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logo/utils/page_transation.dart';
import 'package:logo/view/form_screeen/form_screen.dart';
import 'package:logo/view/home_screen/home_screen.dart';
import 'package:logo/view/otp_screen/bloc/otp_bloc.dart';
import 'package:logo/view/otp_screen/widget/back_button_widget.dart';
import 'package:logo/view/otp_screen/widget/otp_example_widget.dart';
import 'package:logo/view/otp_screen/widget/otp_field_widget.dart';
import 'package:logo/view/otp_screen/widget/otp_resent_widget.dart';
import 'package:logo/view/otp_screen/widget/otp_sub_text_widget.dart';
import 'package:logo/view/otp_screen/widget/otp_text.widget.dart';
import 'package:logo/view/otp_screen/widget/otp_timer.dart';
import 'package:logo/view/otp_screen/widget/submit_button.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key, required this.phone, required this.status});

  final String phone;
  final Map? status;
  bool otpError=false;
  final TextEditingController _otpdigi1 = TextEditingController();
  final TextEditingController _otpdigi2 = TextEditingController();
  final TextEditingController _otpdigi3 = TextEditingController();
  final TextEditingController _otpdigi4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpBloc, OtpState>(
      listener: (context, state) {
        if(state is OtpErrorState){
          otpError=true;
        } if(state is NavigateToNameState){
              Navigator.push(context, FadeTransitionPageRoute(child: FormScreen(phone: phone,)));
        }
    if(state is NavigateToHomePage){
              Navigator.pushReplacement(context, FadeTransitionPageRoute(child: HomeScreen()));
        }
    
      },
      
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(),
                OtpTextWidget(),
                OtpSubTextWidget(phone: phone),
                OtpSampleWidget(status: status! ?? {}),
                OtpFieldWidget(
                  otpdigi1: _otpdigi1,
                  otpdigi2: _otpdigi2,
                  otpdigi3: _otpdigi3,
                  otpdigi4: _otpdigi4,otpError: otpError,
                ),
                OtpTimerWidget(),
                OtpResentWidget(),
                SubmitButtonWidget(
                  phone: phone,
                  otpdigi1: _otpdigi1,
                  otpdigi2: _otpdigi2,
                  otpdigi3: _otpdigi3,
                  otpdigi4: _otpdigi4,
                  status: status!,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
