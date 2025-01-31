import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/settings/view/widgets/cusotom_accept_button_widget.dart';
import 'package:docshpere/features/settings/view/widgets/term_and_conditions_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({super.key});

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  final List<Map<String, String>> terms = [
    {
      "title": "Appointments",
      "content":
          "Appointments are confirmed based on availability. We reserve the right to reschedule or cancel in unforeseen circumstances."
    },
    {
      "title": "Payments",
      "content":
          "All payments must be completed in advance. Refunds are only issued if the appointment is canceled 24 hours prior."
    },
    {
      "title": "Privacy",
      "content":
          "Your data is securely stored and only shared with authorized personnel for booking and consultation purposes."
    },
    {
      "title": "User Conduct",
      "content":
          "Users must maintain respectful behavior towards doctors and staff. Abusive conduct may lead to account suspension."
    },
    {
      "title": "Cancellations",
      "content":
          "You can cancel your appointment up to 24 hours before the scheduled time to avoid cancellation charges."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Terms & Conditions',
          )),
      backgroundColor: MyColors.whiteColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value.toLowerCase();
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Search terms...",
                    prefixIcon: Icon(Icons.search, color: MyColors.primaryColor),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TermAndConditionsList(terms: terms, searchQuery: searchQuery),
              ],
            ),
          ),
          CusotomAcceptButtonWidget(),
        ],
      ),
    );
  }
}
