
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:flutter/material.dart';

class DetailsLoadingWidget extends StatelessWidget {
  const DetailsLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Space.hSpace80,
          Container(
            height: 200,
            color: Colors.grey[300],
            margin: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 15),
          ),
          CommonDivider(),
          Container(
            height: 50,
            color: Colors.grey[300],
            margin: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 15),
          ),
          CommonDivider(),
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 15),
              ),
              CommonDivider(),
              Container(
                height: 50,
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 15),
              ),
            ],
          ),
          CommonDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 150,
                color: Colors.grey[300],
              ),
              Container(
                height: 50,
                width: 150,
                color: Colors.grey[300],
              ),
            ],
          ),
          Space.hSpace10,
          Container(
            height: 150,
            color: Colors.grey[300],
            margin: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 15),
          ),
        ],
      ),
    );
  }
}
