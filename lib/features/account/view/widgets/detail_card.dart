 import 'package:flutter/material.dart';

Widget detailCard(String title, String detail) {
    return Card(
      color: const Color.fromARGB(255, 241, 241, 241),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              detail == '' ? 'no data added' : detail,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

