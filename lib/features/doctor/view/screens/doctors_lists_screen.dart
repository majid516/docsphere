import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/model/search_model.dart';
import 'package:docshpere/features/doctor/view/widgets/doctor_list_tile.dart';
import 'package:docshpere/features/doctor/view/widgets/sorting_button.dart';
import 'package:docshpere/features/doctor/view_model/bloc/doctor_baic_details_bloc/doctor_basic_details_bloc.dart';
import 'package:docshpere/features/doctor/view_model/cubit/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../booking_appointment/view/widgets/loading_widget.dart';

class DoctorsListsScreen extends StatelessWidget {
  final String title;
  final String type;
  const DoctorsListsScreen({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context) {
    context
        .read<DoctorBasicDetailsBloc>()
        .add(DoctorBasicDetailsEvent.fechBasicDoctorDetails(title));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          action: () => context.pop(),
          title: title,
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: BlocBuilder<DoctorBasicDetailsBloc, DoctorBasicDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            basicDetaisLoadedState: (doctors) {
              final doctorFilteredByType =  doctors.where((doctor) => doctor.workType == 'Both' || doctor.workType == type).toList();
              context.read<SearchCubitCubit>().initializeDoctors(doctorFilteredByType);
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: ScreenSize.width * 0.83,
                          child: SearchBar(
                            side: WidgetStatePropertyAll(
                                BorderSide(color: MyColors.primaryColor)),
                            leading: Icon(
                              Icons.search,
                              color: MyColors.lightGreyColor,
                            ),
                            onChanged: (value) {
                              context
                                  .read<SearchCubitCubit>()
                                  .searchDoctor(value.trim());
                            },
                            backgroundColor:
                                WidgetStatePropertyAll(MyColors.whiteColor),
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 15)),
                            elevation: WidgetStatePropertyAll(1),
                            hintText: 'search your doctor',
                            hintStyle: WidgetStatePropertyAll(
                                AuthenticationSyles.hintTextStyle),
                          ),
                        ),
                        Space.wSpace5,
                        SortingButton(),
                      ],
                    ),
                  ),
                  Expanded(
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
                            return DoctorListTile(doctor: doctor,consultationType: type,);
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
                  ),
                ],
              );
            },
            loadingState: () => LoadingWidget(),
            orElse: () => SomethingWentWrongScreen(),
          );
        },
      ),
    );
  }
}

