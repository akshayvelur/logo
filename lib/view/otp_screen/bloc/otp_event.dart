part of 'otp_bloc.dart';

@immutable
sealed class OtpEvent {}
class OtpToNavigateEvent extends OtpEvent{
   final String otpdigi1 ;
  final String otpdigi2 ;
  final String otpdigi3 ;
  final String otpdigi4 ;
  final Map clintStatus;

  OtpToNavigateEvent({required this.clintStatus,required this.otpdigi1, required this.otpdigi2, required this.otpdigi3, required this.otpdigi4});
}