import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view/screens/edit_profile_screen.dart';
import 'package:docshpere/features/account/view/screens/profile_screen.dart';
import 'package:docshpere/features/appointment/view/screens/appointment_details_screen.dart';
import 'package:docshpere/features/appointment/view/screens/my_appointment_screen.dart';
import 'package:docshpere/features/appointment/view/screens/upcoming_sessions_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctor_details_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctors_lists_screen.dart';
import 'package:docshpere/features/doctor/view/screens/my_doctors_screen.dart';
import 'package:docshpere/features/home/view/screens/home_screen.dart';
import 'package:docshpere/features/search/view/screens/medical_category_search_screen.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: MyRoutes.home,
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
      name: 'doctorsListScreen',
      path: MyRoutes.doctorsListScreen,
      builder: (context, state) => DoctorsListsScreen(
        title: 'cardiologist',
      ),
    ),
    GoRoute(
      name: 'doctorDetailsScreen',
      path: MyRoutes.doctorDetailsScreen,
      builder: (context, state) => DoctorDetailsScreen(),
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
      name: 'profileScreen',
      path: MyRoutes.profileScreen,
      builder: (context, state) {
        final extraData = state.extra as UserModel;

        final name = extraData.name;
        final profile = extraData.profileImage;
        final email = extraData.email;
        final dob = extraData.dob;
        final gender = extraData.gender;
        final bloodGroup =
            extraData.bloodGroup;
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
        return  EditProfileScreen(user:  data,);
      }
    ),
  ],
);
