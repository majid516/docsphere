import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:docshpere/features/payment/view/widget/pending_tile_widget.dart';
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
                      : ListView.builder(
                          itemCount: groupedRecords.keys.length,
                          itemBuilder: (context, index) {
                            String dateHeader =
                                groupedRecords.keys.elementAt(index);
                            List<PaymentModel> payments =
                                groupedRecords[dateHeader]!;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                                  child: Text(
                                    dateHeader,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ...payments.map((record) {
                                  String formattedDateTime =
                                      DateFormat('dd MMM hh:mm a')
                                          .format(DateTime.parse(record.date));
                                  bool isDebit =
                                      record.transactionType == "debit";
                                  bool isFailed = record.status == 'failed';
                                  Color textColor = isFailed
                                      ? MyColors.blackColor
                                      : isDebit
                                          ? MyColors.errorRed
                                          : MyColors.appGreenColor;

                                  return Card(
                                    color: const Color.fromARGB(
                                        255, 243, 243, 243),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: MemoryImage(
                                            base64Decode(record.profile)),
                                      ),
                                      title: Text(record.doctorName,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                      subtitle: Text(
                                          isFailed
                                              ? formattedDateTime
                                              : "${isDebit ? 'Paid on' : 'Received on'} $formattedDateTime",
                                          style: TextStyle(fontSize: 13)),
                                      trailing: isFailed
                                          ? PendingTagWidget(
                                              amount: record.amount)
                                          : Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "${isDebit ? '-' : '+'} ₹${record.amount}",
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                                Text(
                                                  record.transactionType,
                                                  style: TextStyle(
                                                      color: MyColors
                                                          .darkGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                    ),
                                  );
                                }),
                              ],
                            );
                          },
                        ),
                ),
              );
            },
            loadingState: () {
              return ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    minTileHeight: 90,
                    tileColor: MyColors.lightColor.withValues(alpha: 0.4),
                  ),
                ),
              );
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
