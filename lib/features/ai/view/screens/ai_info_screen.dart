import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/ai/view/widgets/ai_info_components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocsphereAIInfoScreen extends StatelessWidget {
  const DocsphereAIInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => context.pop()
          
      ),
        title: Text('About Docsphere AI',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: MyColors.whiteColor),),
        backgroundColor: MyColors.secondaryColor,
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
    
      ),
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: AiInfoComponents(),
      ),
    );
  }
}
