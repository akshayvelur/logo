part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}
class LoginActionEvent extends LoginEvent{
  final String phone;

  LoginActionEvent({required this.phone});
}