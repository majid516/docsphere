import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final String status;

  const NotificationCard({
    required this.title,
    required this.message,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    IconData statusIcon;
    Color statusColor;
    Color titleColor;

    switch (status) {
      case 'upcoming':
        statusIcon = Icons.calendar_today;
        statusColor = const Color(0xFF4A90E2);
        titleColor = const Color(0xFF4A90E2);
        break;
      case 'updated':
        statusIcon = Icons.refresh;
        statusColor = const Color(0xFFF5A623);
        titleColor = const Color(0xFFF5A623);
        break;
      case 'confirmed':
        statusIcon = Icons.check_circle;
        statusColor = const Color(0xFF50E3C2);
        titleColor = const Color(0xFF50E3C2);
        break;
      default:
        statusIcon = Icons.notifications;
        statusColor = const Color(0xFF9B9B9B);
        titleColor = Colors.black87;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: statusColor.withOpacity(0.2),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: statusColor.withOpacity(0.1),
              child: Icon(
                statusIcon,
                color: statusColor,
                size: 30,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
