import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app_bloc_managment/pages/welcome/bloc/welcome_bloc.dart';
import 'package:shop_app_bloc_managment/pages/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<WelcomeBloc>(
            create: (context) => WelcomeBloc(),
          ),

        ],
        //
        child:  ScreenUtilInit(
          builder: (context,child)=>
               const MaterialApp(
            debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
        ))
      );

  }
}
