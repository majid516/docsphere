import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view%20model/provider/forgot_password.dart';
import 'package:docshpere/features/authentication/view%20model/provider/password_toggle.dart';
import 'package:docshpere/features/doctor_details/view_model/provider/scorll_provider.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/firebase_options.dart';
import 'package:docshpere/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // if (kDebugMode) {
  //   try {
  //  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  //     await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  //     log('firebase emulator suit connected');
  //   } catch (e) {
  //     log('firebase emulator connection failed');
  //   }
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasswordToggle()),
        ChangeNotifierProvider(create: (context) => ForgotPasswordProvider()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc()),
          BlocProvider(create: (context) => CategoryBloc()),
        
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      ),
    );
  }
}
