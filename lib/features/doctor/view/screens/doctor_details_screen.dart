import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/components/page_not_found_screen.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/doctor/view/widgets/details_loading_widget.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_full_details_bloc/doctor_full_details_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:docshpere/core/components/doctor_basic_details_widget.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/doctor/view/widgets/book_appointment_button.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/doctor/view/widgets/fee_tile_widget.dart';
import 'package:docshpere/features/doctor/view/widgets/message_button.dart';
import 'package:docshpere/features/doctor/view/widgets/qualification_list_widget.dart';
import 'package:docshpere/features/doctor/view/widgets/reivew_tile_widget.dart';
import 'package:docshpere/features/doctor/view/widgets/specialization_list_widget.dart';
import 'package:docshpere/features/doctor/view_model/provider/scorll_provider.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final String uid;
  final String consultationType;
  DoctorDetailsScreen({
    super.key,
    required this.uid,
    required this.consultationType,
  });

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
    'MBBS - Bachelor of Medicine and Bachelor of Surgery',
    'MD - Doctor of Medicine in General Medicine',
    'DM - Cardiology',
    'Fellowship in Dermatology',
    'Diploma in Pediatrics',
  ];

  final List<Map<String, String>> patientStories = [
    {
      'name': 'John',
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
    context
        .read<DoctorFullDetailsBloc>()
        .add(DoctorFullDetailsEvent.fechDoctorFullDetails(uid));
    return ChangeNotifierProvider(
      create: (context) => ScorllProvider('Dr Robert Kalvin'),
      child: Consumer<ScorllProvider>(
        builder: (context, scrollProvider, child) {
          return Scaffold(
            backgroundColor: MyColors.whiteColor,
            body: BlocBuilder<DoctorFullDetailsBloc, DoctorFullDetailsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadedState: (doctor) {
                    return CustomScrollView(
                      controller: scrollProvider.scrollController,
                      slivers: [
                        SliverAppBar(
                          expandedHeight: 25,
                          backgroundColor: MyColors.primaryColor,
                          flexibleSpace: FlexibleSpaceBar(
                            title: Text(
                              scrollProvider.title,
                              style: CommonStyles.doctorWhiteNameStyle,
                            ),
                            titlePadding: EdgeInsets.only(left: 20, bottom: 20),
                          ),
                          floating: false,
                          pinned: true,
                          leading: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 10),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_ios,
                                  color: MyColors.whiteColor),
                              onPressed: () => context.pop(),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              DoctorBasicDetailsCard(
                                doctor: BasicDoctorModel(
                                    name: doctor.name,
                                    category: doctor.category,
                                    experience: doctor.experience,
                                    uid: uid,
                                    fees: doctor.fees,
                                    gender: doctor.gender,
                                    profile: doctor.profile,
                                    workType: doctor.workType),
                              ),
                              CommonDivider(),
                              FeeTileWidget(
                                fee: doctor.fees,
                              ),
                              CommonDivider(),
                              Column(
                                children: [
                                  SpecializationWidget(
                                      specializations: doctor.specializations),
                                  CommonDivider(),
                                  QualificationListWidget(
                                      qualifications: doctor.qualifications),
                                ],
                              ),
                              CommonDivider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MessageButton(action: () async {
                                    final user =
                                        FirebaseAuth.instance.currentUser;
                                    final chatPartnerModel = ChatPartnerModel(
                                        clientProfile: '',
                                        doctorProfile: doctor.profile,
                                        clientName: '',
                                        doctorName: doctor.name,
                                        doctorId: uid,
                                        clientId: user!.uid.toString(),
                                        lastMessage: '',
                                        lastMessageTime: '');
                                    context
                                        .push(MyRoutes.chatingScreen, extra: chatPartnerModel);
                                  }),
                                  BookAppointmentButton(action: () {
                                    context.push(MyRoutes.bookAppointmentScreen,
                                        extra: {
                                          'uid': uid,
                                          'name': doctor.name,
                                          'cat': doctor.category,
                                          'profile': doctor.profile,
                                          'fees': doctor.fees,
                                          'experience': doctor.experience,
                                          'consultationType': consultationType,
                                        });
                                  }),
                                ],
                              ),
                              Space.hSpace10,
                              ReviewTileWidget(patientStories: patientStories),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  errorState: () {
                    return PageNotFoundScreen();
                  },
                  orElse: () {
                    return DetailsLoadingWidget();
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

Future<String> getChatRoomId(String userId, String doctorId) async {
  final chatRoomRef = FirebaseFirestore.instance.collection('chatRooms');

  final querySnapshot = await chatRoomRef
      .where('users', arrayContainsAny: [userId, doctorId]).get();

  if (querySnapshot.docs.isNotEmpty) {
    return querySnapshot.docs.first.id;
  } else {
    final newRoomRef = await chatRoomRef.add({
      'users': [userId, doctorId],
      'createdAt': FieldValue.serverTimestamp(),
    });

    return newRoomRef.id;
  }
}
