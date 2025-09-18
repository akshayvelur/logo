import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logo/controller/api_service.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginActionEvent>(lLoginActionEvent);
    
  }
  

  FutureOr<void> lLoginActionEvent(LoginActionEvent event, Emitter<LoginState> emit) async{
  Map<String, dynamic>? status=  await ApiService.verifyUser(event.phone);
if(status!.isNotEmpty){
emit(UserToOtpState(status: status??{}));
}

  
    
  }
}
