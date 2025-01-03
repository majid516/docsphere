import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/search/model/category_model.dart';

Future<List<CategoryModel>> getAllMedicalCategories() async {
  try {
    final categoryList = await FirebaseFirestore.instance
      .collection('admin')
      .doc('medicalCategory')
      .collection('medicalCategory')
      .get();
    
     return  categoryList.docs.map((category){
        return CategoryModel.fromMap(category.data());
       }).toList();
    
  } catch (e,stacktrace) {
    log(stacktrace.toString());
        log(e.toString());
       return [];
  }
}
