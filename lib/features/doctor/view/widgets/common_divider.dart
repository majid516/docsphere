import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(

      indent: 10,
      endIndent: 10,
    );
  }
}
