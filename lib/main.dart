import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app_bloc_managment/pages/sign_in/sign_in_screen.dart';
import 'package:shop_app_bloc_managment/pages/welcome/bloc/welcome_bloc.dart';
import 'package:shop_app_bloc_managment/pages/welcome/welcome_screen.dart';
import 'package:shop_app_bloc_managment/size_config.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);


    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const WelcomeScreen(),
          routes: [
            GoRoute(
              path: "Sign_In",
              builder: (context, state) =>  SignInScreen(),
            ),

          ],
        ),
      ],
    );


    return MultiBlocProvider(
      providers: [
        BlocProvider<WelcomeBloc>(
          create: (context) => WelcomeBloc(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
          title: "Go router",
        ),
      ),
    );
  }
}
