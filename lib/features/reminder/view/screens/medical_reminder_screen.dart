import 'dart:developer';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/reminder/view/widgets/reminder_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class MedicalReminderScreen extends StatefulWidget {
  const MedicalReminderScreen({super.key});

  @override
  State<MedicalReminderScreen> createState() => _MedicalReminderScreenState();
}

class _MedicalReminderScreenState extends State<MedicalReminderScreen> {
  final TextEditingController _reminderNameController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String _repeatFrequency = "Daily";
  bool _notificationsEnabled = true;
  bool _showFields = false;

  final List<Map<String, dynamic>> _reminders = [];

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  Future<void> _initializeNotifications() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  Future<void> _addReminder() async {
    if (_reminderNameController.text.isNotEmpty &&
        _selectedDate != null &&
        _selectedTime != null) {
      final DateTime reminderDateTime = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        _selectedTime!.hour,
        _selectedTime!.minute,
      );

      if (_notificationsEnabled) {
        await _scheduleNotification(reminderDateTime);
      }

      setState(() {
        _reminders.add({
          'name': _reminderNameController.text,
          'date': _selectedDate,
          'time': _selectedTime,
          'repeat': _repeatFrequency,
          'notes': _notesController.text,
          'notifications': _notificationsEnabled,
        });
        _reminderNameController.clear();
        _notesController.clear();
        _selectedDate = null;
        _selectedTime = null;
        _repeatFrequency = "Daily";
        _notificationsEnabled = true;
        _showFields = false;
      });
    } else {
      showCustomSnackBar(context, 'fill required', true);
    }
  }

Future<void> _scheduleNotification(DateTime scheduledDateTime) async {
  final location = tz.getLocation('America/New_York'); 
  final tzScheduledDateTime = tz.TZDateTime.from(scheduledDateTime, location);

  final androidDetails = AndroidNotificationDetails(
    'reminder_channel_id',
    'Reminder Notifications',
    channelDescription: 'Notifications for reminders',
    importance: Importance.high,
    priority: Priority.high,
    enableVibration: true,
    playSound: true,
  );

  final platformDetails = NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.zonedSchedule(
    0,
    'Medical Reminder',
    'It\'s time for your reminder!',
    tzScheduledDateTime, 
    platformDetails,
    androidScheduleMode: AndroidScheduleMode.exact,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: ReminderCustomAppBar(),
      ),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_showFields) ...[
              TextFormField(
                controller: _reminderNameController,
                decoration: InputDecoration(
                  labelText: "Reminder Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          _selectedDate != null
                              ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
                              : "Select Date",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _selectTime(context),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          _selectedTime != null
                              ? _selectedTime!.format(context)
                              : "Select Time",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _repeatFrequency,
                items: ["Daily", "Weekly", "Monthly", "Custom"]
                    .map((freq) => DropdownMenuItem(
                          value: freq,
                          child: Text(freq),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _repeatFrequency = value!;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Repeat Frequency",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _notesController,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: "Notes (Optional)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_showFields) {
                    _addReminder();
                  } else {
                    setState(() {
                      _showFields = true;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(ScreenSize.width * 0.8, 40),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 2),
                ),
                child: Text(
                  _showFields ? "Save Reminder" : "+ Add Reminder",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: _reminders.isEmpty
                  ? Center(
                      child: Text(
                        "No reminders added yet.",
                        style: AuthenticationSyles.hintTextStyle,
                      ),
                    )
                  : ListView.builder(
                      itemCount: _reminders.length,
                      itemBuilder: (context, index) {
                        final reminder = _reminders[index];
                        return Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              tileColor:  MyColors.whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), 
                              ),
                              title: Text(
                                reminder['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.primaryColor, 
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date: ${DateFormat('yyyy-MM-dd').format(reminder['date'])}",
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    "Time: ${reminder['time'].format(context)}",
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    "Repeat: ${reminder['repeat']}",
                                    style: TextStyle(
                                      color: reminder['repeat'] == 'Never'
                                          ? Colors.red
                                          :  MyColors.appGreenColor,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: MyColors.appGreenColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _reminders.removeAt(index);
                                  });
                                },
                              ),
                              leading: Icon(
                                Icons.notifications_active, 
                                color:  MyColors.primaryColor,
                              ),
                              onTap: () {
                                log("Tapped on reminder: ${reminder['name']}");
                              },
                            ));
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
