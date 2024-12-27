import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UpcomingSessionsScreen extends StatelessWidget {
  const UpcomingSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.go(MyRoutes.home),
            title: 'UpComing Sessions',
          )),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyColors.lightColor.withValues(alpha: 0.25)
              ),
              child: ListTile(
                onTap:() => context.go(MyRoutes.appointmentDetailsScreen),
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.lightColor,
                        spreadRadius: 2,
                        blurRadius: 1
                      )
                    ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                    image: NetworkImage(
                      'https://familydoctor.org/wp-content/uploads/2018/02/41808433_l.jpg',
                    ),
                    fit: BoxFit.cover
                  )),
                ),
                title: Text('For Physical Consultaion',
                style: TextStyle(fontSize: 19,color: MyColors.appGreenColor),
                ),
                subtitle: Text('Dr Lauren Hump', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
              ),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}


