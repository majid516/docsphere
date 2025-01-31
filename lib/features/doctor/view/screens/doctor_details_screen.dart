import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/doctor/view/widgets/details_loading_widget.dart';
import 'package:docshpere/features/doctor/view/widgets/select_consultation_type_box.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_full_details_bloc/doctor_full_details_bloc.dart';
import 'package:docshpere/features/patient_stories/view_model/patient_stories/patient_stories_bloc.dart';
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
import 'package:docshpere/features/patient_stories/view/widgets/patient_stories_tile_widget.dart';
import 'package:docshpere/features/doctor/view/widgets/specialization_list_widget.dart';
import 'package:docshpere/features/doctor/view_model/provider/scorll_provider.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final String uid;
  final String consultationType;
  const DoctorDetailsScreen({
    super.key,
    required this.uid,
    required this.consultationType,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<DoctorFullDetailsBloc>()
        .add(DoctorFullDetailsEvent.fechDoctorFullDetails(uid));
    context.read<PatientStoriesBloc>().add(
          PatientStoriesEvent.fetchAllPatientStories(doctorId: uid),
        );
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
                                    context.push(MyRoutes.chatingScreen,
                                        extra: chatPartnerModel);
                                  }),
                                  BookAppointmentButton(action: () {
                                    showConsultationTypeDialog(
                                      context: context,
                                      workType: doctor.workType,
                                      uid: uid,
                                      doctorName: doctor.name,
                                      doctorCategory: doctor.category,
                                      doctorProfile: doctor.profile,
                                      fees: doctor.fees,
                                      experience: doctor.experience,
                                    );
                                  }),
                                ],
                              ),
                              Space.hSpace10,
                              BlocBuilder<PatientStoriesBloc,
                                  PatientStoriesState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    storiesLoadedState: (patientStories) {
                                      return ReviewTileWidget(
                                          patientStories: patientStories);
                                    },
                                    orElse: () => Space.hSpace10,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  errorState: () => GeneralErrorScreen(),
                  loadingState: () => DetailsLoadingWidget(),
                  orElse: () => SomethingWentWrongScreen(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

