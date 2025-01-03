import 'package:docshpere/core/components/doctor_basic_details_widget.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class DoctorFullBasicDetailsWidget extends StatelessWidget {
  const DoctorFullBasicDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.26,
      child: Column(
        children: [
         // DoctorBasicDetailsCard(doctor: BasicDoctorModel(name: 'name', category: 'category', experience: 'experience', patientStories: 'patientStories', fees: 'fees', profile: 'profile'),),
          Divider(
            color: MyColors.lightGreyColor,
            indent: 15,
            endIndent: 15,
          ),
          Space.hSpace5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text('~₹500 ',style: CommonStyles.feeTextStyle ,), Text('consutation fee',style: CommonStyles.doctorDetailsStyle,)],
              ),
              Container(
                width: ScreenSize.width * 0.3,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.primaryColor),
                    color: MyColors.whiteColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text(
                    'view profile',
                    style: CommonStyles.commonButtonBlackTextStyle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
