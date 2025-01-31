import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/search/view/widgets/seach_screen_components.dart';
import 'package:docshpere/features/search/view_model/bloc/category/category_bloc.dart';
import 'package:docshpere/features/search/view_model/cubit/cubit/search_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              return SeachScreenComponents(type: type);
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
