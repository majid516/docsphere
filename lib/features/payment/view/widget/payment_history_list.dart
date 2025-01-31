import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:docshpere/features/payment/view/widget/payment_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentHistoryList extends StatelessWidget {
  const PaymentHistoryList({
    super.key,
    required this.groupedRecords,
  });

  final Map<String, List<PaymentModel>> groupedRecords;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                padding: const EdgeInsets.symmetric(
                    vertical: 5, horizontal: 13),
                child: Text(
                  dateHeader,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ...payments.map(
                (record) {
                  String formattedDateTime =
                      DateFormat('dd MMM hh:mm a').format(
                          DateTime.parse(record.date));
                  final amount =
                      record.amount.split('.').first;
                  bool isDebit =
                      record.transactionType == "debit";
                  bool isFailed = record.status == 'failed';
                  Color textColor = isFailed
                      ? MyColors.blackColor
                      : isDebit
                          ? MyColors.errorRed
                          : MyColors.appGreenColor;
    
                  return PaymentCartWidget(isFailed: isFailed, formattedDateTime: formattedDateTime, isDebit: isDebit, amount: amount, textColor: textColor, record: record,);
                },
              ),
            ],
          );
        },
      );
  }
}
