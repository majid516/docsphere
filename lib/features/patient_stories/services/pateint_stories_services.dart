import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';

class PateintStoriesServices {
  Future<void> addPatientStories(String doctorId,PatientStoriesModel story) async {
    try {
       await FirebaseFirestore.instance
        .collection('doctor')
        .doc(doctorId)
        .collection('PatientStories')
        .add(story.toMap());
      
    } catch (e, stacktrace) {
      throw Exception('excption while feching bookings $e in $stacktrace');
    }
  }

  Future<List<PatientStoriesModel>> fetchAllPatientStories(String doctorId)async{
    try {
    final stories = await FirebaseFirestore.instance
        .collection('doctor')
        .doc(doctorId)
        .collection('PatientStories')
        .get();

    if (stories.docs.isNotEmpty) {
      return stories.docs.map((doc) {
        return PatientStoriesModel.fromMap(doc.data());
      }).toList();
    }
    return [];
  } catch (e, stacktrace) {
    throw Exception('excption while feching bookings $e in $stacktrace');
  }
  }
}
