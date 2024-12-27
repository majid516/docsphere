import 'dart:developer';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/features/search/view/widgets/category_list_widget.dart';
import 'package:docshpere/routes/routes_name.dart';
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
            action: () => context.go(MyRoutes.home),
            title: 'Find Your Doctor',
          )),
          backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              width: ScreenSize.width * 0.93,
              child: SearchBar(
               side: WidgetStatePropertyAll(
               BorderSide(color: MyColors.primaryColor)
               ),
               leading: Icon(Icons.search,color: MyColors.lightGreyColor,),
               backgroundColor: WidgetStatePropertyAll(MyColors.whiteColor),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15)),
                elevation: WidgetStatePropertyAll(1),
                hintText: 'seach your category',
                hintStyle:
                    WidgetStatePropertyAll(AuthenticationSyles.hintTextStyle),
              ),
            ),
          ),
          CategoryListWidget(),
        ],
      ),
    );
  }
}
