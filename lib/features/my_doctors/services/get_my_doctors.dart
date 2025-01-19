import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/my_doctors/model/my_doctor_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<List<MyDoctorModel>> getAllMyDoctors() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final docsList = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .get();

    if (docsList.docs.isNotEmpty) {
      return docsList.docs.map((doc) {
        return MyDoctorModel(
          uid: doc['uid'],
          profile: doc['profile'],
          doctorName: doc['doctorName'],
          doctorCategory: doc['doctorCategory'],
        );
      }).toSet().toList();
    }
    return [];
  } catch (e, stacktrace) {
    throw Exception('exception while fetching my doctors $e in $stacktrace');
  }
}
