import 'dart:convert';

import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordViewScreen extends StatelessWidget {
  final String image;
  const RecordViewScreen({super.key, required this.image,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(ScreenSize.width, 100), child: CustomAppBar(title: 'preview', action: context.pop)),
      body: SizedBox(
        width: ScreenSize.width,
        height: ScreenSize.height,
        child: Image.memory(base64Decode(image)),
      ),
    );
  }
}