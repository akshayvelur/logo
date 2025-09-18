import 'package:flutter/material.dart';
import 'package:logo/view/form_screeen/bloc/form_details_bloc.dart';
import 'package:logo/view/login_screen/bloc/login_bloc.dart';
import 'package:logo/view/otp_screen/bloc/otp_bloc.dart';
import 'package:logo/view/splash_screen/bloc/splash_bloc.dart';
import 'package:logo/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => SplashBloc()),
        Provider(create: (context) => LoginBloc()),
        Provider(create: (context) => OtpBloc()),
        Provider(create: (context) => FormDetailsBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Logo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
