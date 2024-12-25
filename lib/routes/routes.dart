import 'package:docshpere/features/authentication/view/screens/login_and_register_screen.dart';
import 'package:docshpere/features/authentication/view/screens/login_screen.dart';
import 'package:docshpere/features/authentication/view/screens/register_screen.dart';
import 'package:docshpere/features/doctor_details/view/screens/doctor_details_screen.dart';
import 'package:docshpere/features/doctor_lists/view/screens/doctors_lists_screen.dart';
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
    builder: (context, state) => DoctorsListsScreen(title: 'Doctor',),
  ),
  GoRoute(
    name: 'doctorDetailsScreen',
    path: MyRoutes.doctorDetailsScreen,
    builder: (context, state) => DoctorDetailsScreen(),
  ),
],
);
