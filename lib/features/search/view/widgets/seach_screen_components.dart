import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/search/model/category_search_model.dart';
import 'package:docshpere/features/search/view/widgets/medical_category_list.dart';
import 'package:docshpere/features/search/view_model/cubit/cubit/search_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeachScreenComponents extends StatelessWidget {
  const SeachScreenComponents({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 45,
            width: ScreenSize.width * 0.93,
            child: SearchBar(
              side: WidgetStatePropertyAll(
                  BorderSide(color: MyColors.primaryColor)),
              leading: Icon(
                Icons.search,
                color: MyColors.lightGreyColor,
              ),
              onChanged: (value) {
                context
                    .read<SearchCategoryCubit>()
                    .searchCategory(value.trim().toLowerCase());
              },
              backgroundColor:
                  WidgetStatePropertyAll(MyColors.whiteColor),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 15)),
              elevation: WidgetStatePropertyAll(1),
              hintText: 'seach your category',
              hintStyle: WidgetStatePropertyAll(
                  AuthenticationSyles.hintTextStyle),
            ),
          ),
        ),
        Expanded(
          child:
              BlocBuilder<SearchCategoryCubit, CategorySearchModel>(
            builder: (context, searchState) {
              final filteredCategories =
                  searchState.filteredCategories;
              if (filteredCategories.isEmpty) {
                return Center(
                  child: Text(
                    'No Categories Available',
                    style: AuthenticationSyles.hintTextStyle,
                  ),
                );
              }
              return MedicalCategoryList(filteredCategories: filteredCategories, type: type);
            },
          ),
        ),
      ],
    );
  }
}
