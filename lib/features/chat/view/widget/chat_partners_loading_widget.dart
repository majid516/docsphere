import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChatPartnersLoadingWidget extends StatelessWidget {
  const ChatPartnersLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: 16.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[300],
              ),
              title: Container(
                height: 12,
                width: 100,
                color: Colors.grey[300],
              ),
              subtitle: Container(
                height: 10,
                width: 150,
                color: Colors.grey[300],
              ),
              trailing: Container(
                height: 10,
                width: 50,
                color: Colors.grey[300],
              ),
            ),
          ),
        );
      },
    );
  }
}
