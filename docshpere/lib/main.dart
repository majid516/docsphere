import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/home/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  
  initialLocation: '/singInUp', routes: [
  GoRoute(
    name: 'singInUp',
    path: '/singInUp',
    builder: (context, state) => LoginAndRegisterScreen(),
  ),
  GoRoute(
    name: 'login',
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    name: 'register',
    path: '/register',
    builder: (context, state) => RegisterScreen(),
  ),
  GoRoute(
    name: 'home',
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
],);
