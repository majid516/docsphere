// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RecordModel {
  String path;
  String type;
  String createdAt;
  String? id;
  RecordModel({
    required this.path,
    required this.type,
    required this.createdAt,
    this.id,
  });

  RecordModel copyWith({
    String? path,
    String? type,
    String? createdAt,
    String? id,
  }) {
    return RecordModel(
      path: path ?? this.path,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'type': type,
      'createdAt': createdAt,
      'id': id,
    };
  }

  factory RecordModel.fromMap(Map<String, dynamic> map) {
    return RecordModel(
      path: map['path'] as String,
      type: map['type'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] != null ? map['id'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecordModel.fromJson(String source) => RecordModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RecordModel(path: $path, type: $type, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(covariant RecordModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.path == path &&
      other.type == type &&
      other.createdAt == createdAt &&
      other.id == id;
  }

  @override
  int get hashCode {
    return path.hashCode ^
      type.hashCode ^
      createdAt.hashCode ^
      id.hashCode;
  }
}
