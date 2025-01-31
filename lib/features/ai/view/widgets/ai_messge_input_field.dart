import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class AiMessageInputFieldWidget extends StatelessWidget {
  const AiMessageInputFieldWidget({
    super.key,
    required TextEditingController controller,
    required this.sendMessage,
  }) : _controller = controller;
  final VoidCallback sendMessage;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Share Your Health Condition....",
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 100, 100, 100)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                sendMessage();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: MyColors.themeGradient,
                ),
                child: Icon(Icons.send, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
