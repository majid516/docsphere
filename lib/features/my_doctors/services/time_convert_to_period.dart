
String getTimePeriod(String timeRange) {
  List<String> parts = timeRange.split(" to ");
  if (parts.length != 2) return "Invalid time format";

  String startTime = parts[0]; 

  List<String> timeParts = startTime.split(" ");
  if (timeParts.length != 2) return "Invalid time format";

  String period = timeParts[1]; 
  List<String> hourMinutes = timeParts[0].split(":");
  int hour = int.tryParse(hourMinutes[0]) ?? 0;

  if (period == "PM" && hour != 12) {
    hour += 12;
  } else if (period == "AM" && hour == 12) {
    hour = 0; 
  }

  if (hour >= 5 && hour < 12) {
    return "Morning";
  } else if (hour >= 12 && hour < 17) {
    return "Afternoon";
  } else if (hour >= 17 && hour < 20) {
    return "Evening";
  } else {
    return "Night";
  }
}
