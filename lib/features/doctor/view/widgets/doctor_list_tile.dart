import 'package:docshpere/core/components/doctor_basic_details_widget.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/view_doctor_profile_button.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorListTile extends StatelessWidget {
  final String consultationType;
  final BasicDoctorModel doctor;
  const DoctorListTile({
    super.key,
    required this.doctor,
    required this.consultationType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DoctorBasicDetailsCard(
            doctor: doctor,
          ),
          Divider(
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  '₹${doctor.fees}',
                  style: CommonStyles.feeTextStyle,
                ),
                Space.wSpace10,
                Text(
                  'consultation fee',
                  style: CommonStyles.commonButtonBlackTextStyle,
                ),
                Spacer(),
                ViewDoctorProfileButton(
                  action: () {
                    context.push(MyRoutes.doctorDetailsScreen, extra: {
                      'uid': doctor.uid,
                      'consultationType': consultationType
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
