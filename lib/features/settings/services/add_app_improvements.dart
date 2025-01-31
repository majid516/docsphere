import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/settings/model/app_suggestion_model.dart';

Future<void> suggestAppImprovement(AppSuggestionModel appSuggestion)async{
  try {
     final paymentAdminDoc = FirebaseFirestore.instance
            .collection('admin')
            .doc('App Suggestions')
            .collection('suggestions');
        paymentAdminDoc.add(appSuggestion.toMap());
  } catch (e,s) {
    throw Exception('$e in $s');
  }
}