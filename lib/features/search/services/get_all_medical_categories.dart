import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Map<String, dynamic>>> getAllMedicalCategories() async {
  try {
    final categoryList = await FirebaseFirestore.instance
      .collection('admin')
      .doc('medicalCategory')
      .collection('medicalCategory')
      .get();
    
     return  categoryList.docs.map((category){
        return category.data();
       }).toList();
    
  } catch (e) {
        log(e.toString());
       return [{}];
  }
}
