import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/components/custom_animated_appbar.dart';
import 'package:docshpere/features/home/view/components/doctor_full_basic_details_widget.dart';
import 'package:docshpere/features/home/view/widgets/booking_cards_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_reviewed_doctor_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAnimatedAppbar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Space.hSpace15,
                  BookingCardsWidget(),
                  TopReviewedDoctorCard(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'Suggestion for you',
                      style: HomeScreenStyles.mediumText,
                    ),
                  ),
                  DoctorFullBasicDetailsWidget(),
                  SizedBox(
                    width: ScreenSize.width,
                    height: ScreenSize.height * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          width: ScreenSize.width *0.8,
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  child: ListTile(
                    horizontalTitleGap: 0,
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 32,
                    ),
                    title: Text(
                      'Majid',
                      style: CommonStyles.doctorNameStyle,
                    ),
                    subtitle: InkWell(
                      onTap: () {},
                      child: Text(
                        'view and edit profile',
                        maxLines: 1,
                        style: CommonStyles.commonButtonBlackTextStyle,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              DrawerItemsWidgets(title: 'appointment', action: (){},),
             
            ],
          ),
        ));
  }
}

class DrawerItemsWidgets extends StatelessWidget {
  final String image;
   final Widget button;
   final String title;
   final Icon icon;
   final VoidCallback action;

  const DrawerItemsWidgets({
   
    super.key,   required this.title,  required this.action,this.image = '',  this.button = const Icon(Icons.abc), this.icon = const Icon(Icons.arrow_forward_ios),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: action,
      leading: Container(
        width: 40,
        height: 40,
      //  color: Colors.amber,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image))
        ),
      ),
      title: Text(title),
      trailing: icon,

    );
  }
}
