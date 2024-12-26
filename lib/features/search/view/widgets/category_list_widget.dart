import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/search/view/widgets/text_styles.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            laodedState: (categories) {
              return ListView.separated(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final categoryImage =
                      base64Decode(categories[index]['image']);
                  return ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    minTileHeight: 30,
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: MemoryImage(categoryImage),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: MyColors.lightColor
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.lightColor,
                            blurRadius: 3
                          )
                        ]
                      ),
                    ),
                    title: Text(
                      categories[index]['title'],
                      style: SearchTextStyles.categoryStyle,
                    ),
                    onTap: () {
                      context.go(MyRoutes.doctorsListScreen);
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
                  onTap: () {
                    context.go(MyRoutes.doctorsListScreen);
                  },
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
