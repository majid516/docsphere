import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  const HeadingWidget({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Space.wSpace10,
        Text(
          heading,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}