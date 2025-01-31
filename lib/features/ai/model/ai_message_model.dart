import 'dart:convert';

class AiMessageModel {
  String text;
  String time;
  String sender;
  AiMessageModel({
    required this.text,
    required this.time,
    required this.sender,
  });
  


  AiMessageModel copyWith({
    String? text,
    String? time,
    String? sender,
  }) {
    return AiMessageModel(
      text: text ?? this.text,
      time: time ?? this.time,
      sender: sender ?? this.sender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'time': time,
      'sender': sender,
    };
  }

  factory AiMessageModel.fromMap(Map<String, dynamic> map) {
    return AiMessageModel(
      text: map['text'] as String,
      time: map['time'] as String,
      sender: map['sender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AiMessageModel.fromJson(String source) => AiMessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AiMessageModel(text: $text, time: $time, sender: $sender)';

  @override
  bool operator ==(covariant AiMessageModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.text == text &&
      other.time == time &&
      other.sender == sender;
  }

  @override
  int get hashCode => text.hashCode ^ time.hashCode ^ sender.hashCode;
}
