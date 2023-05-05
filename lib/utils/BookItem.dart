import 'package:flutter/material.dart';

class BookItem {
  final String id;
  final String title;
  final String author;
  final String thumbnailUrl;

  BookItem({
    required this.id,
    required this.title,
    required this.author,
    required this.thumbnailUrl,
  });
    String get getId => id;
    String get getTitle => title;
    String get getAuthor => author;
    String get getthumbnailUrl => thumbnailUrl;

  factory BookItem.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> volumeInfo = json['volumeInfo'];
    final String id = json['id'];
    final String title = volumeInfo['title'];
    final String author = volumeInfo['authors']?.join(', ') ?? 'Unknown Author';
    final String thumbnailUrl = volumeInfo['imageLinks']?['thumbnail'] ?? '';

    return BookItem(
      id: id,
      title: title,
      author: author,
      thumbnailUrl: thumbnailUrl,
    );
  }
}