part of 'form_details_bloc.dart';

@immutable
sealed class FormDetailsState {}

final class FormDetailsInitial extends FormDetailsState {}
class FormSumitState extends FormDetailsState{}