// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryModel {
  String title;
  String image;
  CategoryModel({
    required this.title,
    required this.image,
  });
  

  

  CategoryModel copyWith({
    String? title,
    String? image,
  }) {
    return CategoryModel(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryModel(title: $title, image: $image)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode;
}
