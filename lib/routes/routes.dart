import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view/screens/edit_profile_screen.dart';
import 'package:docshpere/features/account/view/screens/profile_screen.dart';
import 'package:docshpere/features/appointment/view/screens/appointment_details_screen.dart';
import 'package:docshpere/features/appointment/view/screens/my_appointment_screen.dart';
import 'package:docshpere/features/appointment/view/screens/upcoming_sessions_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/booking_appointment/view/screens/book_appointment_screen.dart';
import 'package:docshpere/features/chat/view/screens/chat_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctor_details_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctors_lists_screen.dart';
import 'package:docshpere/features/location/view/screen/location_screen.dart';
import 'package:docshpere/features/medical_records/view/screens/medical_records_screen.dart';
import 'package:docshpere/features/medical_records/view/screens/record_view_screen.dart';
import 'package:docshpere/my_doctors_screen.dart';
import 'package:docshpere/features/home/view/screens/home_screen.dart';
import 'package:docshpere/features/search/view/screens/medical_category_search_screen.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

final currentUser = FirebaseAuth.instance.currentUser;
final GoRouter router = GoRouter(
  initialLocation:
      currentUser == null ? MyRoutes.signInOrRegister : MyRoutes.home,
  routes: [
    GoRoute(
      name: 'singInUp',
      path: MyRoutes.signInOrRegister,
      builder: (context, state) => LoginAndRegisterScreen(),
    ),
    GoRoute(
      name: 'login',
      path: MyRoutes.signIn,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      name: 'register',
      path: MyRoutes.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      name: 'home',
      path: MyRoutes.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: 'categorySearchScren',
      path: MyRoutes.categorySearchScren,
      builder: (context, state) => MedicalCategorySearchScreen(),
    ),
    GoRoute(
      name: 'medicalRecordPerview',
      path: MyRoutes.medicalRecordPerview,
      builder: (context, state) {
        final path = state.extra as String;
        return RecordViewScreen(
          image: path,
        );
      },
    ),
    GoRoute(
        name: 'doctorsListScreen',
        path: MyRoutes.doctorsListScreen,
        builder: (context, state) {
          final title = state.extra as String;
          return DoctorsListsScreen(
            title: title,
          );
        }),
    GoRoute(
      name: 'doctorDetailsScreen',
      path: MyRoutes.doctorDetailsScreen,
      builder: (context, state) {
        final uid = state.extra as String;
        return DoctorDetailsScreen(
          uid: uid,
        );
      },
    ),
    GoRoute(
      name: 'myDoctorsScreen',
      path: MyRoutes.myDoctorsScreen,
      builder: (context, state) => MyDoctorsScreen(),
    ),
    GoRoute(
      name: 'myAppointmentScreen',
      path: MyRoutes.myAppointmentScreen,
      builder: (context, state) => MyAppointmentScreen(),
    ),
    GoRoute(
      name: 'upcomingSessions',
      path: MyRoutes.upcomingSessions,
      builder: (context, state) => UpcomingSessionsScreen(),
    ),
    GoRoute(
      name: 'appointmentDetailsScreen',
      path: MyRoutes.appointmentDetailsScreen,
      builder: (context, state) => AppointmentDetailsScreen(),
    ),
    GoRoute(
      name: 'medicalRecordsScreen',
      path: MyRoutes.medicalRecordsScreen,
      builder: (context, state) => MedicalRecordsScreen(),
    ),
    GoRoute(
        name: 'chatPage',
        path: MyRoutes.chatPage,
        builder: (context, state) {
          final data = state.extra as Map<String, String>;
          return ChatPage(
            doctorId: data['doctorId']!,
            roomId: data['roomId']!,
            userId: data['userId']!,
          );
        }),
    GoRoute(
      name: 'bookAppointmentScreen',
      path: MyRoutes.bookAppointmentScreen,
      builder: (context, state) {
        final data = state.extra as Map<String, String>;
        return BookAppointmentScreen(
          uid: data['uid']!.toString(),
          name: data['name']!.toString(),
          category: data['cat']!.toString(),
          profile: data['profile']!,
        );
      },
    ),
    GoRoute(
      name: 'profileScreen',
      path: MyRoutes.profileScreen,
      builder: (context, state) {
        final extraData = state.extra as UserModel;

        final name = extraData.name;
        final profile = extraData.profileImage;
        final email = extraData.email;
        final dob = extraData.dob;
        final gender = extraData.gender;
        final bloodGroup = extraData.bloodGroup;
        final contact = extraData.contactNumber;

        return ProfileScreen(
            name: name,
            email: email,
            profileImage: profile,
            contactNumber: contact,
            dob: dob,
            bloodGroup: bloodGroup,
            gender: gender);
      },
    ),
    GoRoute(
        name: 'editProfileScreen',
        path: MyRoutes.editProfileScreen,
        builder: (context, state) {
          final data = state.extra as UserModel;
          return EditProfileScreen(
            user: data,
          );
        }),
    GoRoute(
      name: 'locationScreen',
      path: MyRoutes.locationScreen,
      builder: (context, state) => LocationScreen(),
    ),
  ],
);
