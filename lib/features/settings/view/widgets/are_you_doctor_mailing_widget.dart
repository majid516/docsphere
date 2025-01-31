import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/settings/services/send_mail_to_docsphere.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreYouDoctorMailingWidget extends StatelessWidget {
  const AreYouDoctorMailingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          userLoadedState: (user) {
          return  Center(
              child: ElevatedButton.icon(
                onPressed: () async{
                 await sendEmailToDocsphere(user.name, user.email);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.whiteColor,
                  minimumSize: Size(ScreenSize.width * 0.43, 35),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  side: BorderSide(
                      width: 1, color: MyColors.primaryColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                icon: Icon(Icons.email_rounded,
                    color: MyColors.primaryColor),
                label: Text(
                  'message via email',
                  style: TextStyle(
                      fontSize: 14, color: MyColors.primaryColor),
                ),
              ),
            );
          },
          orElse: () {
            return SizedBox();
          },
        );
      },
    );
  }
}
