import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<Map<String,String>?> fetchUserBaseDetails()async{
  try {
     final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return null;
    }

    final user = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser.uid)
        .get();

    return {
      'name': user['name'] ?? '',
      'profileImage': user['profileImage'] ?? '',
    };
  } catch (e,s) {
    log('$e in $s');
  }
  return null;
} 