import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/features/suggestions/view/widgets/doctor_details_card.dart';
import 'package:docshpere/features/suggestions/view/widgets/suggestion_loading_widget.dart';
import 'package:docshpere/features/suggestions/view_model/bloc/doctors_suggestions_bloc.dart';
import 'package:docshpere/features/suggestions/view_model/bloc/suggestions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuggestionListWidget extends StatelessWidget {
  const SuggestionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SuggestionsBloc>().add(SuggestionsEvent.fetchSuggestions());

    return BlocBuilder<SuggestionsBloc, SuggestionsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => SizedBox(),
          loadedState: (suggestions) {
            context.read<DoctorsSuggestionsBloc>().add(
                  DoctorsSuggestionsEvent.fechBasicDoctorDetails(suggestions),
                );
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.hSpace15,   
                Padding(
                    padding: const EdgeInsets.symmetric( 
                        horizontal: 20.0,),
                    child: Text(
                      'Suggestion for you',
                      style: HomeScreenStyles.mediumText,
                    ),
                  ),
                BlocBuilder<DoctorsSuggestionsBloc, DoctorsSuggestionsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loadingState: () => ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (ctx, index) {
                          return SuggestionLoadingWidget();
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
                      ),
                      orElse: () => SizedBox(), 
                      basicDetaisLoadedState: (doctors) {
                        return ListView.separated(
                        padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: doctors.length < 6 ? doctors.length : 6,
                          itemBuilder: (ctx, index) {
                            final doctor = doctors[index];
                            return DoctorDetailsCard(
                                doctor: doctor, consultationType: '');
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
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
