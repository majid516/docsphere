import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MedicalCategorySearchScreen extends StatelessWidget {
  final List<Map<String, String>> medicalCategories = [
    {'title': 'Cardiology', 'icon': 'C'},
    {'title': 'Neurology', 'icon': 'N'},
    {'title': 'Pediatrics', 'icon': 'P'},
    {'title': 'Orthopedics', 'icon': 'O'},
    {'title': 'Dermatology', 'icon': 'D'},
  ];

  MedicalCategorySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            title: 'Find Your Doctor',
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              width: ScreenSize.width * 0.93,
              child: SearchBar(
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15)),
                elevation: WidgetStatePropertyAll(1),
                hintText: 'seach your category',
                hintStyle:
                    WidgetStatePropertyAll(AuthenticationSyles.hintTextStyle),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: medicalCategories.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(medicalCategories[index]['icon']!),
                  ),
                  title: Text(medicalCategories[index]['title']!),
                  onTap: () {
                   context.go(MyRoutes.doctorsListScreen);
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
