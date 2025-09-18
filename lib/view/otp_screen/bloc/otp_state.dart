part of 'otp_bloc.dart';

@immutable
sealed class OtpState {}

final class OtpInitial extends OtpState {}
class NavigateToNameState extends OtpState{}
class OtpErrorState extends OtpState{}
class NavigateToHomePage extends OtpState{}