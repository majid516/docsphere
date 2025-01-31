import 'package:collection/collection.dart';
import 'package:docshpere/features/payment/view/widget/payment_history_list.dart';
import 'package:docshpere/features/payment/view/widget/payment_list_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:docshpere/features/payment/view_model/bloc/payment_bloc.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<PaymentBloc>().add(PaymentEvent.fetchAllPayments());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Payments',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: BlocBuilder<PaymentBloc, PaymentState>(
        builder: (ctx, state) {
          return state.maybeWhen(
            loadedPaymentsState: (records) {
              var mutableRecords = List<PaymentModel>.from(records);
              mutableRecords.sort((a, b) =>
                  DateTime.parse(b.date).compareTo(DateTime.parse(a.date)));
              var groupedRecords = groupBy(mutableRecords, (record) {
                return DateFormat('MMM yyyy')
                    .format(DateTime.parse(record.date));
              });
              return SizedBox(
                width: ScreenSize.width,
                height: ScreenSize.height,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: records.isEmpty
                      ? Center(
                          child: Text(
                            'Payments Empty',
                            style: AuthenticationSyles.hintTextStyle,
                          ),
                        )
                      : PaymentHistoryList(groupedRecords: groupedRecords),
                ),
              );
            },
            loadingState: () {
              return PaymentListLoadingWidget();
            },
            errorState: () {
              return GeneralErrorScreen();
            },
            orElse: () {
              return SomethingWentWrongScreen();
            },
          );
        },
      ),
    );
  }
}
