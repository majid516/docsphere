import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showConsultationTypeDialog(
    {required BuildContext context,
    required String workType,
    required String uid,
    required String doctorName,
    required String doctorCategory,
    required String doctorProfile,
    required String fees,
    required String experience}) {
  String selectedType = workType == 'Both' ? 'Online' : workType;

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            backgroundColor: MyColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Consultation Type',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                if (workType == 'Both') ...[
                  RadioListTile<String>(
                    title: const Text('Online'),
                    value: 'Online',
                    groupValue: selectedType,
                    onChanged: (value) {
                      setState(() {
                        selectedType = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Offline'),
                    value: 'Offline',
                    groupValue: selectedType,
                    onChanged: (value) {
                      setState(() {
                        selectedType = value!;
                      });
                    },
                  ),
                ],
                if (workType == 'Online')
                  RadioListTile<String>(
                    title: const Text('Online'),
                    value: 'Online',
                    groupValue: selectedType,
                    onChanged: null,
                  ),
                if (workType == 'Offline')
                  RadioListTile<String>(
                    title: const Text('Offline'),
                    value: 'Offline',
                    groupValue: selectedType,
                    onChanged: null,
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {
                    context.push(MyRoutes.bookAppointmentScreen, extra: {
                      'uid': uid,
                      'name': doctorName,
                      'cat': doctorCategory,
                      'profile': doctorProfile,
                      'fees': fees,
                      'experience': experience,
                      'consultationType': selectedType,
                    });
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: MyColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(width: 1, color: MyColors.appGreenColor),
                    ),
                  ),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: MyColors.appGreenColor),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
