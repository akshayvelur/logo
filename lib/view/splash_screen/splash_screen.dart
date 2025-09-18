import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logo/utils/page_transation.dart';
import 'package:logo/view/login_screen/login_screen.dart';
import 'package:logo/view/splash_screen/bloc/splash_bloc.dart';
import 'package:logo/view/splash_screen/widgets/logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashBloc>().add(InitLoading());
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if(state  is InitLoadingState){
          Navigator.pushReplacement(context, FadeTransitionPageRoute(child:LoginScreen() ));
        }
        
      },
      child: Scaffold(body: LogoWidget()),
    );
  }
}
