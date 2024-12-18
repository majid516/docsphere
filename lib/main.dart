import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/home/view/screens/home_screen.dart';
import 'package:docshpere/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
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
