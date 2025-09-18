part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
class UserToOtpState extends LoginState{
  final Map status;

  UserToOtpState({required this.status});
}
