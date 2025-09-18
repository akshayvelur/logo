import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logo/controller/api_service.dart';
import 'package:meta/meta.dart';

part 'form_details_event.dart';
part 'form_details_state.dart';

class FormDetailsBloc extends Bloc<FormDetailsEvent, FormDetailsState> {
  FormDetailsBloc() : super(FormDetailsInitial()){
    on<FormSubmitEvent>(formSubmitEvent);
  }

  FutureOr<void> formSubmitEvent(FormSubmitEvent event, Emitter<FormDetailsState> emit) async{
    print("hiii");
     await ApiService.loginorRegistration(event.phone, event.name);
   // emit(FormSubmitState());
  }
}
