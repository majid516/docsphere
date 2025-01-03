import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/account/view_model/cubit/cubit/calendar_cubit.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view%20model/provider/forgot_password.dart';
import 'package:docshpere/features/authentication/view%20model/provider/password_toggle.dart';
import 'package:docshpere/features/booking_appointment/view_model/bloc/appointment_booking_bloc.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_baic_details_bloc/doctor_basic_details_bloc.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_full_details_bloc/doctor_full_details_bloc.dart';
import 'package:docshpere/features/doctor/view_model/cubit/search_cubit/search_cubit_cubit.dart';
import 'package:docshpere/features/location/view_model/location_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/cubit/cubit/delete_cubit_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/features/search/view_model/cubit/cubit/search_category_cubit.dart';
import 'package:docshpere/firebase_options.dart';
import 'package:docshpere/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasswordToggle()),
        ChangeNotifierProvider(create: (context) => ForgotPasswordProvider()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc()),
          BlocProvider(create: (context) => CategoryBloc()),
          BlocProvider(create: (context) => ProfileBloc()),
          BlocProvider(create: (context) => DoctorBasicDetailsBloc()),
          BlocProvider(create: (context) => DoctorFullDetailsBloc()),
          BlocProvider(create: (context) => AppointmentBookingBloc()),
          BlocProvider(create: (context) => SearchCubitCubit()),
          BlocProvider(create: (context) => CalendarCubit()),
          BlocProvider(create: (context) => SearchCategoryCubit()),
          BlocProvider(create: (context) => LocationCubit()),
          BlocProvider(create: (context) => MedicalRecordsBloc()),
          BlocProvider(create: (context) => ManageRecordsBloc()),
          BlocProvider(create: (context) => DeleteSwipeCubit()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      ),
    );
  }
}
