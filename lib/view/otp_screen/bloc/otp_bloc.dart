import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpInitial()) {
    on<OtpToNavigateEvent >(otpToNavigateEvent );
  }

  FutureOr<void> otpToNavigateEvent(OtpToNavigateEvent  event, Emitter<OtpState> emit) {
    String enterdOtp=event.otpdigi1+event.otpdigi2+event.otpdigi3+event.otpdigi4;
if(event.clintStatus['userExists']==true){
   if(int.parse(event.clintStatus['otp'])==int.parse(enterdOtp)){
     print("OTP matched ✅");
      emit(NavigateToHomePage());
    }else{
       print("OTP mismatch ❌");
       emit(OtpErrorState());
    }
}else{
   if(int.parse(event.clintStatus['otp'])==int.parse(enterdOtp)){
     print("OTP matched ✅");
      emit(NavigateToNameState());
    }else{
       print("OTP mismatch ❌");
       emit(OtpErrorState());
    }
}
 
 
  
  }
}
