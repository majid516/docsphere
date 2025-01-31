import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/search/model/category_model.dart';
import 'package:docshpere/features/search/view/widgets/text_styles.dart';
import 'package:docshpere/features/suggestions/view_model/bloc/suggestions_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MedicalCategoryList extends StatelessWidget {
  const MedicalCategoryList({
    super.key,
    required this.filteredCategories,
    required this.type,
  });

  final List<CategoryModel> filteredCategories;
  final String type;

  @override
  Widget build(BuildContext context) {
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
            context.read<SuggestionsBloc>().add(SuggestionsEvent.updateSuggestion( newSuggestion: filteredCategories[index].title));
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
  }
}
