import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingCardsWidget extends StatelessWidget {
  const BookingCardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => context.push(MyRoutes.categorySearchScren),
          child: SizedBox(
            width: ScreenSize.width * 0.45,
            height: ScreenSize.width * 0.5,
            child: Column(
              children: [
                Container(
                  width: ScreenSize.width * 0.45,
                  height: ScreenSize.width * 0.3,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: MyColors.darkGreyColor,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/flat-hand-drawn-patient-taking-medical-examination-illustration_23-2148859982.jpg?ga=GA1.1.544291484.1727460968&semt=ais_hybrid'),
                          fit: BoxFit.cover)),
                ),
                Space.hSpace10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Book Your Physical\nConsutation',
                      style: HomeScreenStyles.normalText2,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      color: MyColors.darkGreyColor,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: ScreenSize.width * 0.45,
          height: ScreenSize.width * 0.5,
          child: Column(
            children: [
              Container(
                width: ScreenSize.width * 0.45,
                height: ScreenSize.width * 0.3,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: MyColors.darkGreyColor,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/premium-vector/virtual-doctor-consultation-smartphone-screen_1151483-74458.jpg?w=1480'),
                        fit: BoxFit.cover)),
              ),
              Space.hSpace10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Book Your Online\nConsutation',
                    style: HomeScreenStyles.normalText2,
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: MyColors.darkGreyColor,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
