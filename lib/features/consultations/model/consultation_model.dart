import 'dart:convert';

class ConsultationModel {
  String bookedDate;
  String cancelledAt;
  String doctorCategory;
  String doctorName;
  String fees;
  String profile;
  String slotDate;
  String slotTime;
  String status;
  String type;
  String uid;
  String patientName;
  String bookingId;
  ConsultationModel({
    required this.bookedDate,
    required this.cancelledAt,
    required this.doctorCategory,
    required this.doctorName,
    required this.fees,
    required this.profile,
    required this.slotDate,
    required this.slotTime,
    required this.status,
    required this.type,
    required this.uid,
    required this.patientName,
    required this.bookingId,
  });

  ConsultationModel copyWith({
    String? bookedDate,
    String? cancelledAt,
    String? doctorCategory,
    String? doctorName,
    String? fees,
    String? profile,
    String? slotDate,
    String? slotTime,
    String? status,
    String? type,
    String? uid,
    String? patientName,
    String? bookingId,
  }) {
    return ConsultationModel(
      bookedDate: bookedDate ?? this.bookedDate,
      cancelledAt: cancelledAt ?? this.cancelledAt,
      doctorCategory: doctorCategory ?? this.doctorCategory,
      doctorName: doctorName ?? this.doctorName,
      fees: fees ?? this.fees,
      profile: profile ?? this.profile,
      slotDate: slotDate ?? this.slotDate,
      slotTime: slotTime ?? this.slotTime,
      status: status ?? this.status,
      type: type ?? this.type,
      uid: uid ?? this.uid,
      patientName: patientName ?? this.patientName,
      bookingId: bookingId ?? this.bookingId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookedDate': bookedDate,
      'cancelledAt': cancelledAt,
      'doctorCategory': doctorCategory,
      'doctorName': doctorName,
      'fees': fees,
      'profile': profile,
      'slotDate': slotDate,
      'slotTime': slotTime,
      'status': status,
      'type': type,
      'uid': uid,
      'patientName': patientName,
      'bookingId': bookingId,
    };
  }

  factory ConsultationModel.fromMap(Map<String, dynamic> map) {
    return ConsultationModel(
      bookedDate: map['bookedDate'] as String,
      cancelledAt: map['cancelledAt'] as String,
      doctorCategory: map['doctorCategory'] as String,
      doctorName: map['doctorName'] as String,
      fees: map['fees'] as String,
      profile: map['profile'] as String,
      slotDate: map['slotDate'] as String,
      slotTime: map['slotTime'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      patientName: map['patientName'] as String,
      bookingId: map['bookingId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ConsultationModel.fromJson(String source) => ConsultationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ConsultationModel(bookedDate: $bookedDate, cancelledAt: $cancelledAt, doctorCategory: $doctorCategory, doctorName: $doctorName, fees: $fees, profile: $profile, slotDate: $slotDate, slotTime: $slotTime, status: $status, type: $type, uid: $uid, patientName: $patientName, bookingId: $bookingId)';
  }

  @override
  bool operator ==(covariant ConsultationModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.bookedDate == bookedDate &&
      other.cancelledAt == cancelledAt &&
      other.doctorCategory == doctorCategory &&
      other.doctorName == doctorName &&
      other.fees == fees &&
      other.profile == profile &&
      other.slotDate == slotDate &&
      other.slotTime == slotTime &&
      other.status == status &&
      other.type == type &&
      other.uid == uid &&
      other.patientName == patientName &&
      other.bookingId == bookingId;
  }

  @override
  int get hashCode {
    return bookedDate.hashCode ^
      cancelledAt.hashCode ^
      doctorCategory.hashCode ^
      doctorName.hashCode ^
      fees.hashCode ^
      profile.hashCode ^
      slotDate.hashCode ^
      slotTime.hashCode ^
      status.hashCode ^
      type.hashCode ^
      uid.hashCode ^
      patientName.hashCode ^
      bookingId.hashCode;
  }
}
