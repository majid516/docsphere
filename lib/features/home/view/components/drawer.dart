import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/home/services/signout.dart';
import 'package:docshpere/features/home/view/widgets/drawer_dummy_header.dart';
import 'package:docshpere/features/home/view/widgets/drawer_header_widget.dart';
import 'package:docshpere/features/home/view/widgets/drawer_icon_widget.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(ProfileEvent.getUserData());
   String currUser = '';

    return Drawer(
      backgroundColor: MyColors.whiteColor,
      width: ScreenSize.width * 0.8,
      child: ListView(
        children: [
          SizedBox(
            height: 110,
            child: DrawerHeader(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
       
                    userLoadedState: (user) {
                      currUser = user.name;
                      return DrawerHeaderWidget(
                        user: user,
                      );
                    },
                    orElse: () {
                      return DrawerDummyHeader();
                    },
                  );
                },
              ),
            ),
          ),
          DrawerItemsWidgets(
            title: 'Appointment',
            action: () {
              context.push(MyRoutes.myAppointmentScreen);
            },
            image: 'asset/Drawer icons/appointment.png',
          ),
          DrawerItemsWidgets(
            title: 'Consultation',
            action: () {
              context.push(MyRoutes.previousConsultationsPage);
            },
            image: 'asset/Drawer icons/cusultations.png',
          ),
          DrawerItemsWidgets(
            title: 'My Doctor',
            action: () {
              context.push(MyRoutes.myDoctorScreen);
            },
            image: 'asset/Drawer icons/doctor.png',
          ),
          DrawerItemsWidgets(
            title: 'Medical Records',
            action: () {
              context.push(MyRoutes.medicalRecordsScreen);
            },
            image: 'asset/Drawer icons/medical_records.png',
          ),
          DrawerItemsWidgets(
            title: 'Upcoming Sessions',
            action: () {
              context.push(MyRoutes.upcomingSessions, extra: currUser);
            },
            image: 'asset/Drawer icons/appointment.png',
          ),
          DrawerItemsWidgets(
              title: 'Reminder',
              action: () {},
              leadingIcon: Icon(
                Icons.alarm,
                size: 38,
                color: MyColors.blueIconsColor,
              )),
          DrawerItemsWidgets(
              title: 'Chats',
              action: () {
                context.push(MyRoutes.myChatsScreen);
              },
              leadingIcon: Icon(
                Icons.question_answer_outlined,
                size: 37,
                color: MyColors.blueIconsColor,
              )),
          DrawerItemsWidgets(
            title: 'Payments',
            action: () {
              context.push(MyRoutes.paymentHistoryScreen);
            },
            leadingIcon: Icon(
              Icons.account_balance_wallet_rounded,
              size: 36,
              color: MyColors.blueIconsColor,
            ),
          ),
          DrawerItemsWidgets(
            title: 'Location',
            action: () {
              context.push(MyRoutes.locationScreen);
            },
            leadingIcon: Icon(
              Icons.location_on,
              size: 38,
              color: MyColors.blueIconsColor,
            ),
          ),
          Divider(
            thickness: 12,
            color: MyColors.lightGreyColor.withValues(alpha: 0.4),
          ),
          DrawerItemsWidgets(
            title: 'settings',
            action: () {},
          ),
          DrawerItemsWidgets(
              title: 'Like us? Give 5 stars',
              action: () {},
              leadingIcon: Icon(
                Icons.thumb_up_off_alt_outlined,
                color: MyColors.darkGreyColor,
              )),
          DrawerItemsWidgets(
            title: 'Are you a doctor',
            action: () {},
            image: 'asset/Drawer icons/doc_n.png',
            size: 22,
          ),
          DrawerItemsWidgets(
            title: 'Help Center',
            action: () {},
            leadingIcon: Icon(
              Icons.help_outline_outlined,
              color: MyColors.darkGreyColor,
            ),
          ),
          Divider(
            thickness: 12,
            color: MyColors.lightGreyColor.withValues(alpha: 0.4),
          ),
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    title: Text('Sign Out'),
                    content: Text('Are you sure you want to sign out?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          await signoutUser();
                          if (context.mounted) {
                          context.go(MyRoutes.signInOrRegister);
                          }
                        },
                        child: Text('Sign Out'),
                      ),
                    ],
                  );
                },
              );
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryColor),
                ),
                Space.wSpace15,
                Icon(
                  Icons.logout_rounded,
                  color: MyColors.blueIconsColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
