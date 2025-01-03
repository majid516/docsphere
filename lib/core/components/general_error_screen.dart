import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:flutter/material.dart';

class GeneralErrorScreen extends StatelessWidget {
  const GeneralErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/images/error.png',
            width: 200,
            height: 200,
          ),
          Space.hSpace20,
          Text(
            "Oops! Something went wrong.",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Space.hSpace20,
          Text(
            "An unexpected error occurred.\nTry again later.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
          ),
          Space.hSpace70,
        ],
      ),
    );
  }
}
