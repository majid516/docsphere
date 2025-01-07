import 'dart:developer';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/features/search/view/widgets/category_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MedicalCategorySearchScreen extends StatelessWidget {
  const MedicalCategorySearchScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = context.read<CategoryBloc>().state;
      state.maybeWhen(
        laodedState: (categories) {
          log('categories loaded in screen');
        },
        orElse: () => context
            .read<CategoryBloc>()
            .add(CategoryEvent.fechAllMedicalCategories()),
      );
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Find Your Doctor',
          )),
      backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          CategoryListWidget(),
        ],
      ),
    );
  }
}
