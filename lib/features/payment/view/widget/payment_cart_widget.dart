import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:docshpere/features/payment/view/widget/pending_tile_widget.dart';
import 'package:flutter/material.dart';

class PaymentCartWidget extends StatelessWidget {
  const PaymentCartWidget({
    super.key,
    required this.isFailed,
    required this.formattedDateTime,
    required this.isDebit,
    required this.amount,
    required this.textColor, required this.record,
  });

  final bool isFailed;
  final String formattedDateTime;
  final bool isDebit;
  final String amount;
  final Color textColor;
  final PaymentModel record;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(
          255, 243, 243, 243),
      margin: EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: ListTile(
        leading: record.profile == '' ||
                record.profile.isEmpty
            ? CircleAvatar(
                backgroundColor: MyColors
                    .primaryColor
                    .withValues(alpha: 0.2),
                child: Text(
                  'D',
                  style: TextStyle(
                      color:
                          MyColors.primaryColor,
                      fontSize: 25,
                      fontWeight:
                          FontWeight.w700),
                ),
              )
            : CircleAvatar(
                backgroundImage: MemoryImage(
                    base64Decode(
                        record.profile)),
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
                    "${isDebit ? '-' : '+'} ₹$amount",
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
  }
}
