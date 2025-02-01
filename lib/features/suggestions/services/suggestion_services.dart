import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SuggestionServices {
  static const String boxName = 'suggestionBox';

  Future<void> initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox<List<String>>(boxName);
    final box = Hive.box<List<String>>(boxName);
    if (box.get('suggestions') == null) {
      box.put('suggestions', ['', '', '']);
    }
  }

  List<String> getSuggestions() {
    final box = Hive.box<List<String>>(boxName);
    return box.get('suggestions', defaultValue: ['Anesthesiology', '', ''])!;
  }

  Future<void> updateSuggestion(String newSuggestion) async {
    final box = Hive.box<List<String>>(boxName);

    final currentSuggestions = List<String>.from(box.get('suggestions') ?? []);

    currentSuggestions.insert(0, newSuggestion);

    if (currentSuggestions.length > 3) {
      currentSuggestions.removeLast();
    }

    await box.put('suggestions', currentSuggestions);
  }

  Future<List<BasicDoctorModel>> fetchBasicDoctorDetails(
      List<String> categories) async {
    try {
      final filteredDoctor = await FirebaseFirestore.instance
          .collection('doctor')
          .where('category', whereIn: categories)
          .get();
      final doctors = filteredDoctor.docs.map((doctor) {
        return BasicDoctorModel.fromMap(doctor.data());
      }).toList();
      return doctors;
    } catch (e, stackTrace) {
      throw Exception(
          'Exception thrown while fetching doctor basic details: $stackTrace');
    }
  }
}
