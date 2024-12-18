import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(InitialState()) {
    on<SignUp>((event, emit) async {
      try {
        await registerUser(event.name, event.email, event.password);
        emit(AuthState.loadedState());
      } catch (e) {
        emit(AuthState.errorState());
      }
    });
    on<SignIn>((event, emit) async {
      try {
        await signInUser(event.email, event.password);
        emit(AuthState.loadedState());
      } catch (e) {
        emit(AuthState.errorState());
      }
    });
   
  }
}




















Future<void> registerUser(String name, String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    String uid = userCredential.user!.uid;

    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'uid': uid,
      'name': name,
      'email': email,
      'role': 'user',
      'profileImage': '',
      'medicalRecords': [],
      'appointments': [],
      'notifications': [],
    });

    log("User registered successfully!");
  } catch (e) {
    log("Error registering user: $e");
  }
}


Future<void> signInUser(String email, String password)async{
   try {
     UserCredential userCredential =  await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  final currMail =  userCredential.user!.email;
  log(currMail!);
   } catch (e) {
     log(e.toString());
   }
}

