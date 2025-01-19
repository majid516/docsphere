import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class DoctorBasicDetailsCard extends StatelessWidget {
  final BasicDoctorModel doctor;
  const DoctorBasicDetailsCard({
    super.key, required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ScreenSize.width,
        height: ScreenSize.height * 0.17,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: ScreenSize.width * 0.3,
              height: ScreenSize.height * 0.2,
              child: Container(
                width: ScreenSize.width * 0.2,
                height: ScreenSize.width * 0.2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: 
                        MemoryImage(base64Decode(doctor.profile,)),
               fit: BoxFit.cover         ),),
              ),
            ),
            SizedBox(
              width: ScreenSize.width * 0.7,
              height: ScreenSize.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dr ${doctor.name}',
                    style: CommonStyles.doctorNameStyle,
                  ),
                  Text(
                    doctor.gender,
                    style: CommonStyles.doctorDetailsStyle,
                  ),
                  Text(
                    '${doctor.experience} years experience',
                    style: CommonStyles.doctorDetailsStyle,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_rounded,
                        color: MyColors.primaryColor,
                      ),
                      Text(
                        ' 235 Patient Stories',
                        style: CommonStyles.doctorDetailsStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
