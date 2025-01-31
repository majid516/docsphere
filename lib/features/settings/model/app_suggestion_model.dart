import 'dart:convert';

class AppSuggestionModel {
  String userMail;
  int rating;
  String category;
  String suggestion;
  String createdAt;
  AppSuggestionModel({
    required this.userMail,
    required this.rating,
    required this.category,
    required this.suggestion,
    required this.createdAt,
  });

  AppSuggestionModel copyWith({
    String? userMail,
    int? rating,
    String? category,
    String? suggestion,
    String? createdAt,
  }) {
    return AppSuggestionModel(
      userMail: userMail ?? this.userMail,
      rating: rating ?? this.rating,
      category: category ?? this.category,
      suggestion: suggestion ?? this.suggestion,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userMail': userMail,
      'rating': rating,
      'category': category,
      'suggestion': suggestion,
      'createdAt': createdAt,
    };
  }

  factory AppSuggestionModel.fromMap(Map<String, dynamic> map) {
    return AppSuggestionModel(
      userMail: map['userMail'] as String,
      rating: map['rating'] as int,
      category: map['category'] as String,
      suggestion: map['suggestion'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppSuggestionModel.fromJson(String source) => AppSuggestionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AppSuggestionModel(userMail: $userMail, rating: $rating, category: $category, suggestion: $suggestion, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant AppSuggestionModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.userMail == userMail &&
      other.rating == rating &&
      other.category == category &&
      other.suggestion == suggestion &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return userMail.hashCode ^
      rating.hashCode ^
      category.hashCode ^
      suggestion.hashCode ^
      createdAt.hashCode;
  }
  }
