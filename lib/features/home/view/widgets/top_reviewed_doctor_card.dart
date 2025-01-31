import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/home/view/widgets/top_doctor_background_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_doctor_loading_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_reviewed_doctor_details.dart';
import 'package:docshpere/features/home/view_model/top_reiviewed_doctor/top_reviewed_doctor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopReviewedDoctorCard extends StatelessWidget {
  const TopReviewedDoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        TopDoctorBackgroundwidget(),
        BlocBuilder<TopReviewedDoctorBloc, TopReviewedDoctorState>(
          builder: (context, state) {
            return state.maybeWhen(
              topReviewedDoctorLoadedState: (top) {
                final doctorReviewCounts = List.from(top);
                doctorReviewCounts.sort(
                    (a, b) => b['reviewCount'].compareTo(a['reviewCount']));

                final topDoctors = doctorReviewCounts
                    .take(3)
                    .map((e) => e['doctor'] as BasicDoctorModel)
                    .toList();
                final topReviews = doctorReviewCounts
                    .take(3)
                    .map((e) => e['reviewCount'] as int)
                    .toList();
                return TopReviewedDoctorDetailsWidget(
                  doctors: topDoctors,
                  topReviewsCount: topReviews,
                );
              },
              orElse: () => TopReviewedDoctorLoadingWidget(),
            );
          },
        )
      ],
    );
  }
}
