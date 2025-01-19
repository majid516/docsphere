import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Correct the type by extracting the RemoteMessage from the route arguments
    final RemoteMessage message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color(0xFF1C3D5F),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return NotificationCard(
            title: message.notification?.title ?? "No Title",
            message: message.notification?.body ?? "No Message",
            time: message.sentTime?.toString() ?? "No Time",
            status: "Unread", // Assuming unread status
          );
        },
      ),
    );
  }
}



class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final String status;

  NotificationCard({
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

    // Determine icon and color based on status
    switch (status) {
      case 'upcoming':
        statusIcon = Icons.calendar_today;
        statusColor = Color(0xFF4A90E2); // Blue
        titleColor = Color(0xFF4A90E2);
        break;
      case 'updated':
        statusIcon = Icons.refresh;
        statusColor = Color(0xFFF5A623); // Orange
        titleColor = Color(0xFFF5A623);
        break;
      case 'confirmed':
        statusIcon = Icons.check_circle;
        statusColor = Color(0xFF50E3C2); // Green
        titleColor = Color(0xFF50E3C2);
        break;
      default:
        statusIcon = Icons.notifications;
        statusColor = Color(0xFF9B9B9B); // Gray
        titleColor = Colors.black87;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // Clean white background
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
            SizedBox(width: 15),
            // Information Section
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
                  SizedBox(height: 5),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
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
