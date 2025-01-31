import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/features/doctor/model/search_model.dart';
import 'package:docshpere/features/doctor/view/widgets/doctor_list_tile.dart';
import 'package:docshpere/features/doctor/view_model/cubit/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FiltedDoctorList extends StatelessWidget {
  const FiltedDoctorList({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubitCubit, SearchModelState>(
        builder: (context, searchState) {
          final filteredDoctors = searchState.filteredDoctors;
    
          if (filteredDoctors.isEmpty) {
            return Center(
              child: Text(
                'No doctors found',
                style: AuthenticationSyles.hintTextStyle,
              ),
            );
          }
    
          return ListView.separated(
            itemCount: filteredDoctors.length,
            itemBuilder: (context, index) {
              final doctor = filteredDoctors[index];
              return DoctorListTile(
                doctor: doctor,
                consultationType: type,
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Divider(
                  thickness: 7,
                  color: MyColors.lightGreyColor
                      .withValues(alpha: 0.4),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
