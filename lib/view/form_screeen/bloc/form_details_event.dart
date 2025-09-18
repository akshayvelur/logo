part of 'form_details_bloc.dart';

@immutable
sealed class FormDetailsEvent {}
class FormSubmitEvent extends FormDetailsEvent{
  final String name;
  final String phone;

  FormSubmitEvent({required this.name, required this.phone});
}