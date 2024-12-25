import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/doctor_basic_details_widget.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor_details/view/widgets/book_appointment_button.dart';
import 'package:docshpere/features/doctor_details/view/widgets/common_divider.dart';
import 'package:docshpere/features/doctor_details/view/widgets/fee_tile_widget.dart';
import 'package:docshpere/features/doctor_details/view/widgets/message_button.dart';
import 'package:docshpere/features/doctor_details/view/widgets/qualification_list_widget.dart';
import 'package:docshpere/features/doctor_details/view/widgets/reivew_tile_widget.dart';
import 'package:docshpere/features/doctor_details/view/widgets/specialization_list_widget.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  DoctorDetailsScreen({super.key});

  final List<String> specializations = [
    'General Physician',
    'Cardiologist',
    'Dermatologist',
    'Pediatrician',
    'Orthopedic Surgeon',
    'General Physician',
    'Cardiologist',
    'Dermatologist',
    'Pediatrician',
    'Orthopedic Surgeon',
  ];

  final List<String> qualifications = [
    'MBBS - Bachelor of Medicine and Bachelor of    Surgery',
    'MD - Doctor of Medicine in General Medicine',
    'DM - Cardiology',
    'Fellowship in Dermatology',
    'Diploma in Pediatrics',
  ];

  final List<Map<String, String>> patientStories = [
    {
      'name': 'John ',
      'story':
          'Dr. Smith is an excellent doctor! He patiently listened to all my concerns and provided clear explanations about my condition. The treatment plan he suggested has significantly improved my health.',
    },
    {
      'name': 'Jane Smith',
      'story':
          'I had been struggling with back pain for months. After visiting Dr. Smith, I finally feel relieved. He recommended simple exercises and a medication routine that worked wonders.',
    },
    {
      'name': 'Emily Johnson',
      'story':
          'I can\'t thank Dr. Smith enough. My experience with him was amazing. He not only treated my condition but also explained preventive measures to avoid future issues. Highly recommend!',
    },
    {
      'name': 'Michael Brown',
      'story':
          'Great experience overall. The waiting time was minimal, and the staff was very polite. Dr. Smith took his time to explain everything thoroughly, which I really appreciated.',
    },
    {
      'name': 'Sarah Lee',
      'story':
          'I was quite nervous about my first visit to a specialist. Dr. Smith’s calm demeanor and friendly attitude made me feel comfortable instantly. His treatment has been incredibly effective, and I’m already seeing great results.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(title: ''),
      ),
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorBasicDetailsCard(),
            CommonDivider(),
            FeeTileWidget(),
            CommonDivider(),
            Column(
              children: [
                SpecializationWidget(specializations: specializations),
                CommonDivider(),
                QualificationListWidget(qualifications: qualifications),
              ],
            ),
            CommonDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MessageButton(
                  action: () {},
                ),
                BookAppointmentButton(
                  action: () {},
                ),
              ],
            ),
            Space.hSpace10,
            ReviewTileWidget(patientStories: patientStories),
          ],
        ),
      ),
    );
  }
}



