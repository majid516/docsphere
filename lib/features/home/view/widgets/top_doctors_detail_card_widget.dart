
import 'dart:convert';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/widgets/view_doctor_button.dart';
import 'package:flutter/material.dart';

class TopDoctorDetailsCardWidget extends StatelessWidget {
  const TopDoctorDetailsCardWidget({
    super.key,
    required this.doctor,
    required this.storyCount,
  });

  final BasicDoctorModel doctor;
  final int storyCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * 8,
      height: ScreenSize.height * 0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: MyColors.whiteColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: ScreenSize.width * 0.26,
                  height: ScreenSize.width * 0.34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: MemoryImage(base64Decode(doctor.profile)),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Space.wSpace10,
          SizedBox(
            width: ScreenSize.width * 0.53,
            height: ScreenSize.height * 0.22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dr ${doctor.name}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  doctor.category,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${doctor.experience} years experience',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
                      ' $storyCount Patient Stories',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Space.hSpace10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ViewDoctorButton(uid : doctor.uid),
                    Space.wSpace15,
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
