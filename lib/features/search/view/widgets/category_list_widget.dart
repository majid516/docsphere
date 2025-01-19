import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/search/model/category_search_model.dart';
import 'package:docshpere/features/search/view/widgets/text_styles.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/features/search/view_model/cubit/cubit/search_category_cubit.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryListWidget extends StatelessWidget {
  final String type;
  const CategoryListWidget({
    super.key, required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            laodedState: (categories) {
              context
                  .read<SearchCategoryCubit>()
                  .initializeCategories(categories);
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
                        return ListView.separated(
                          itemCount: filteredCategories.length,
                          itemBuilder: (context, index) {
                            final categoryImage =
                                base64Decode(filteredCategories[index].image);
                            return ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              minTileHeight: 30,
                              leading: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(categoryImage),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: MyColors.lightColor),
                                    boxShadow: [
                                      BoxShadow(
                                          color: MyColors.lightColor,
                                          blurRadius: 3)
                                    ]),
                              ),
                              title: Text(
                                filteredCategories[index].title,
                                style: SearchTextStyles.categoryStyle,
                              ),
                              onTap: () {
                                context.push(MyRoutes.doctorsListScreen,
                                    extra: {'title' :filteredCategories[index].title, 'type': type});
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              indent: 10,
                              endIndent: 10,
                              color: MyColors.lightColor,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            errorState: (message) {
              return Center(
                child: Text(message),
              );
            },
            orElse: () => Center(
                child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor:
                        MyColors.lightGreyColor.withValues(alpha: 0.2),
                  ),
                  title: Container(
                    width: ScreenSize.width * 0.7,
                    height: 20,
                    color: MyColors.lightGreyColor.withValues(alpha: 0.2),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )),
          );
        },
      ),
    );
  }
}
