import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/settings/services/send_mail_to_docsphere.dart.dart';
import 'package:docshpere/features/settings/view/widgets/contact_text_field.dart';
import 'package:docshpere/features/settings/view/widgets/contacting_widget.dart';
import 'package:docshpere/features/settings/view/widgets/docsphere_contact_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool _isSubmitting = false;

  Future<void> submitForm(VoidCallback function) async {
    if (_formKey.currentState?.validate() ?? false) {
      function();
      setState(() {
        _isSubmitting = true;
      });
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _isSubmitting = false;
      });
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
      if (context.mounted) {
        showCustomSnackBar(
            context,
            'Thank you for contacting us. We will get back to you soon.',
            false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Contact Us',
          )),
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We’re Here to Help!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "If you have any questions or need assistance, please reach out to us through the following options.",
                style: TextStyle(fontSize: 16, color: MyColors.darkGreyColor),
              ),
              SizedBox(height: 20),
              DocsphereContactCard(),
              SizedBox(height: 20),
              Text(
                "Send Us a Message",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MyColors.primaryColor),
              ),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    ContactTextField(
                        label: "Name", controller: _nameController),
                    SizedBox(height: 10),
                    ContactTextField(
                      label: "Email",
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 10),
                    ContactTextField(
                      label: "Your Message",
                      controller: _messageController,
                      maxLines: 4,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        await submitForm(() {
                          sendEmailToDocsphere(
                              _nameController.text.trim(),
                              _emailController.text.trim(),
                              _messageController.text.trim());
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: // Submit Butt
                          _isSubmitting
                              ? Center(
                                  child: CircularProgressIndicator.adaptive())
                              : Center(
                                  child: Text(
                                    "Send Message",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Quick Contact Options",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MyColors.primaryColor),
              ),
              SizedBox(height: 10),
              ContactingWidget(user: user),
              Space.hSpace40,
            ],
          ),
        ),
      ),
    );
  }
}
