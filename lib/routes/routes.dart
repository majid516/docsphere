import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view/screens/edit_profile_screen.dart';
import 'package:docshpere/features/account/view/screens/profile_screen.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/screens/booking_details_screen.dart';
import 'package:docshpere/features/appointment/view/screens/my_appointment_screen.dart';
import 'package:docshpere/features/appointment/view/screens/upcoming_sessions_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/booking_appointment/view/screens/book_appointment_screen.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/view/screens/chating_screen.dart';
import 'package:docshpere/features/chat/view/screens/my_chats_screen.dart';
import 'package:docshpere/features/consultations/model/consultation_model.dart';
import 'package:docshpere/features/consultations/view/screens/consultation_details_screen.dart';
import 'package:docshpere/features/consultations/view/screens/previous_consultation_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctor_details_screen.dart';
import 'package:docshpere/features/doctor/view/screens/doctors_lists_screen.dart';
import 'package:docshpere/features/location/view/screen/location_screen.dart';
import 'package:docshpere/features/medical_records/view/screens/medical_records_screen.dart';
import 'package:docshpere/features/medical_records/view/screens/record_view_screen.dart';
import 'package:docshpere/features/my_doctors/view/screens/my_doctor_screen.dart';
import 'package:docshpere/features/home/view/screens/home_screen.dart';
import 'package:docshpere/features/notifications/view/screens/notification_screen.dart';
import 'package:docshpere/features/payment/view/screen/payment_history.dart';
import 'package:docshpere/features/payment/view/screen/payment_screen.dart';
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
      name: 'paymentHistoryScreen',
      path: MyRoutes.paymentHistoryScreen,
      builder: (context, state) => PaymentHistoryScreen(),
    ),
    GoRoute(
      name: 'notificationScreen',
      path: MyRoutes.notificationScreen,
      builder: (context, state) {
        return NotificationScreen();
      },
    ),
    GoRoute(
      name: 'consultationDetailsScreen',
      path: MyRoutes.consultationDetailsScreen,
      builder: (context, state) {
        final data = state.extra as ConsultationModel;
        return ConsultationDetailsScreen(session: data,);
      },
    ),
    GoRoute(
      name: 'previousConsultationsPage',
      path: MyRoutes.previousConsultationsPage,
      builder: (context, state) {
        return PreviousConsultationsPage();
      },
    ),
    GoRoute(
        name: 'categorySearchScren',
        path: MyRoutes.categorySearchScren,
        builder: (context, state) {
          final type = state.extra as String;
          return MedicalCategorySearchScreen(
            type: type,
          );
        }),
    GoRoute(
      name: 'bookingDetailsScreen',
      path: MyRoutes.bookingDetailsScreen,
      builder: (context, state) {
        final data = state.extra as UpcomingSessionModel;
        return BookingDetailsScreen(session: data);
      },
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
          final data = state.extra as Map<String, String>;
          return DoctorsListsScreen(
            title: data['title']!,
            type: data['type']!,
          );
        }),
    GoRoute(
      name: 'doctorDetailsScreen',
      path: MyRoutes.doctorDetailsScreen,
      builder: (context, state) {
        final data = state.extra as Map<String, String>;
        return DoctorDetailsScreen(
          consultationType: data['consultationType']!,
          uid: data['uid']!,
        );
      },
    ),
    GoRoute(
      name: 'myAppointmentScreen',
      path: MyRoutes.myAppointmentScreen,
      builder: (context, state) => MyAppointmentScreen(),
    ),
    GoRoute(
        name: 'upcomingSessions',
        path: MyRoutes.upcomingSessions,
        builder: (context, state) {
          final name = state.extra as String;
          return UpcomingSessionsScreen(
            userName: name,
          );
        }),
    GoRoute(
      name: 'medicalRecordsScreen',
      path: MyRoutes.medicalRecordsScreen,
      builder: (context, state) => MedicalRecordsScreen(),
    ),
    GoRoute(
        name: 'paymentScreen',
        path: MyRoutes.paymentScreen,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return PaymentScreen(
            doctorName: data['doctorName'] ?? '',
            category: data['category'] ?? '',
            experience: data['experience'] ?? '',
            slotDate: data['slotDate'] ?? '',
            slotTime: data['slotTime'] ?? '',
            profile: data['profile'] ?? '',
            fees: data['fees'] ?? '',
            uid: data['uid']!,
            consultationType: data['consultationType'],
            selectedDateRaw: data['selectedDateRaw']!,
          );
        }),
    GoRoute(
      name: 'myDoctorScreen',
      path: MyRoutes.myDoctorScreen,
      builder: (context, state) => MyDoctorScreen(),
    ),
    GoRoute(
      name: 'myChatsScreen',
      path: MyRoutes.myChatsScreen,
      builder: (context, state) => MyChatsScreen(),
    ),
    GoRoute(
        name: 'chatingScreen',
        path: MyRoutes.chatingScreen,
        builder: (context, state) {
          final data = state.extra as ChatPartnerModel;
          return ChatingScreen(chatPartnerModel: data,);
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
          fees: data['fees']!,
          experience: data['experience']!,
          consultationType: data['consultationType']!,
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
