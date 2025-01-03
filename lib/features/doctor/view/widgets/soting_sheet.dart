import 'dart:developer';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/doctor/view/widgets/sorting_option.dart';
import 'package:docshpere/features/doctor/view_model/cubit/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void sortingSheet(BuildContext context) {
  RangeValues priceRange = RangeValues(100, 5000);

  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => Container(
        height: ScreenSize.height * 0.45,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Set Price Range',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MyColors.blackColor,
              ),
            ),
            RangeSlider(
              values: priceRange,
              min: 100,
              max: 5000,
              divisions: 100,
              activeColor: MyColors.primaryColor,
              labels: RangeLabels(
                '\$${priceRange.start.round()}',
                '\$${priceRange.end.round()}',
              ),
              onChanged: (newRange) {
                setState(() {
                  priceRange = newRange;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      context
                          .read<SearchCubitCubit>()
                          .filterByPrice(priceRange.start, priceRange.end);
                      Navigator.pop(context);
                      log('Filtered by Price Range: \$${priceRange.start.round()} - \$${priceRange.end.round()}');
                    },
                    child: Text(
                      'Apply Filter',
                      style: TextStyle(color: MyColors.whiteColor),
                    ),
                  ),
                ),
                Space.hSpace10,
                Spacer(),
                Text(
                  'Price Range: \$${priceRange.start.round()} - \$${priceRange.end.round()}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                Space.wSpace10
              ],
            ),
            Space.hSpace10,
            CommonDivider(),
            SortingOption(
              title: 'Price: Low to High',
              onTap: () {
                context.read<SearchCubitCubit>().sortByPriceAscending();
                Navigator.pop(context);
              },
            ),
            SortingOption(
              title: 'Price: High to Low',
              onTap: () {
                context.read<SearchCubitCubit>().sortByPriceDescending();
                Navigator.pop(context);
              },
            ),
            CommonDivider(),
            SortingOption(
              title: 'Experience: Low to High',
              onTap: () {
                context.read<SearchCubitCubit>().sortByExperienceAscending();
                Navigator.pop(context);
              },
            ),
            SortingOption(
              title: 'Experience: High to Low',
              onTap: () {
                context.read<SearchCubitCubit>().sortByExperienceDescending();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
