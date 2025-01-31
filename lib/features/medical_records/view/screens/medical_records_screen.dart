import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/medical_records/view/widgets/add_record_button.dart';
import 'package:docshpere/features/medical_records/view/widgets/record_loading_widget.dart';
import 'package:docshpere/features/medical_records/view/widgets/record_tile_widget.dart';
import 'package:docshpere/features/medical_records/view/widgets/show_image_preview.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<MedicalRecordsBloc>()
        .add(MedicalRecordsEvent.fechAllMedicalRecords());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Medical Records',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: BlocListener<ManageRecordsBloc, ManageRecordsState>(
        listener: (context, state) {
          state.maybeWhen(
            fileLoadedState: (path, base, type) {
              showImagePreviewDialog(context, type, path, base);
            },
            imageLoadedState: (path, base, type) {
              showImagePreviewDialog(context,type, path, base);
            },
            errorState: () {
              showCustomSnackBar(context, 'Failed to open image', true);
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<MedicalRecordsBloc, MedicalRecordsState>(
          builder: (ctx, state) {
            return state.maybeWhen(
              recordsloadedState: (records) {
                return SizedBox(
                  width: ScreenSize.width,
                  height: ScreenSize.height,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: records.isEmpty
                            ? Center(
                                child: Text(
                                  'No Records Added',
                                  style: AuthenticationSyles.hintTextStyle,
                                ),
                              )
                            : RecordTileWidget(records: records),
                      ),
                      AddRecordButton()
                    ],
                  ),
                );
              },
              recordloadingState: () {
                return RecordLoadingWidget();
              },
              errorState: () {
                return SomethingWentWrongScreen();
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}
