import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/account/view_model/cubit/cubit/calendar_cubit.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view%20model/cubit/forgot_password.dart';
import 'package:docshpere/features/authentication/view%20model/cubit/password_toggle.dart';
import 'package:docshpere/features/booking_appointment/view_model/bloc/appointment_booking_bloc.dart';
import 'package:docshpere/features/chat/view_model/chat_bloc/chat_bloc.dart';
import 'package:docshpere/features/consultations/view_model/bloc/consultation_bloc.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_baic_details_bloc/doctor_basic_details_bloc.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_full_details_bloc/doctor_full_details_bloc.dart';
import 'package:docshpere/features/doctor/view_model/cubit/search_cubit/search_cubit_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/cubit/cubit/delete_cubit_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';
import 'package:docshpere/features/my_doctors/view_model/bloc/my_doctors_bloc/my_doctor_bloc.dart';
import 'package:docshpere/features/notifications/services/notification_services.dart';
import 'package:docshpere/features/patient_stories/view_model/patient_stories/patient_stories_bloc.dart';
import 'package:docshpere/features/payment/view_model/bloc/payment_bloc.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/features/search/view_model/cubit/cubit/search_category_cubit.dart';
import 'package:docshpere/firebase_options.dart';
import 'package:docshpere/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/chat/view_model/chat_partners_bloc/chat_partners_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationServices().initializeNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => CategoryBloc()),
        BlocProvider(create: (context) => ProfileBloc()),
        BlocProvider(create: (context) => ForgotPasswordCubit()),
        BlocProvider(create: (context) => PasswordToggleCubit()),
        BlocProvider(create: (context) => DoctorBasicDetailsBloc()),
        BlocProvider(create: (context) => DoctorFullDetailsBloc()),
        BlocProvider(create: (context) => AppointmentBookingBloc()),
        BlocProvider(create: (context) => SearchCubitCubit()),
        BlocProvider(create: (context) => CalendarCubit()),
        BlocProvider(create: (context) => SearchCategoryCubit()),
        BlocProvider(create: (context) => MedicalRecordsBloc()),
        BlocProvider(create: (context) => ManageRecordsBloc()),
        BlocProvider(create: (context) => DeleteSwipeCubit()),
        BlocProvider(create: (context) => ChatBloc()),
        BlocProvider(create: (context) => UpcomingSessionBloc()),
        BlocProvider(create: (context) => MyDoctorBloc()),
        BlocProvider(create: (context) => ConsultationBloc()),
        BlocProvider(create: (context) => PaymentBloc()),
        BlocProvider(create: (context) => ChatPartnersBloc()),
        BlocProvider(create: (context) => PatientStoriesBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
