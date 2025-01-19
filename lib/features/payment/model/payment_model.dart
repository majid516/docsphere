import 'dart:convert';

class PaymentModel {
  final String id;
  final String profile;
  final String doctorName;
  final String amount;
  final String status; 
   final String transactionType;
  final String date;
  PaymentModel({
    required this.id,
    required this.profile,
    required this.doctorName,
    required this.amount,
    required this.status,
    required this.transactionType,
    required this.date,
  });

  PaymentModel copyWith({
    String? id,
    String? profile,
    String? doctorName,
    String? amount,
    String? status,
    String? transactionType,
    String? date,
  }) {
    return PaymentModel(
      id: id ?? this.id,
      profile: profile ?? this.profile,
      doctorName: doctorName ?? this.doctorName,
      amount: amount ?? this.amount,
      status: status ?? this.status,
      transactionType: transactionType ?? this.transactionType,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'profile': profile,
      'doctorName': doctorName,
      'amount': amount,
      'status': status,
      'transactionType': transactionType,
      'date': date,
    };
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      id: map['id'] as String,
      profile: map['profile'] as String,
      doctorName: map['doctorName'] as String,
      amount: map['amount'] as String,
      status: map['status'] as String,
      transactionType: map['transactionType'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) => PaymentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentModel(id: $id, profile: $profile, doctorName: $doctorName, amount: $amount, status: $status, transactionType: $transactionType, date: $date)';
  }

  @override
  bool operator ==(covariant PaymentModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.profile == profile &&
      other.doctorName == doctorName &&
      other.amount == amount &&
      other.status == status &&
      other.transactionType == transactionType &&
      other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      profile.hashCode ^
      doctorName.hashCode ^
      amount.hashCode ^
      status.hashCode ^
      transactionType.hashCode ^
      date.hashCode;
  }
}
