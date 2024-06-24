import 'dart:convert';

import 'package:flutter/widgets.dart';

class ArticleModel {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  ArticleModel({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
  });

  ArticleModel copyWith({
    ValueGetter<String?>? author,
    ValueGetter<String?>? title,
    ValueGetter<String?>? description,
    ValueGetter<String?>? url,
    ValueGetter<String?>? urlToImage,
    ValueGetter<String?>? content,
  }) {
    return ArticleModel(
      author: author != null ? author() : this.author,
      title: title != null ? title() : this.title,
      description: description != null ? description() : this.description,
      url: url != null ? url() : this.url,
      urlToImage: urlToImage != null ? urlToImage() : this.urlToImage,
      content: content != null ? content() : this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'content': content,
    };
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      author: map['author'],
      title: map['title'],
      description: map['description'],
      url: map['url'],
      urlToImage: map['urlToImage'],
      content: map['content'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticleModel.fromJson(String source) =>
      ArticleModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ArticleModel(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ArticleModel &&
        other.author == author &&
        other.title == title &&
        other.description == description &&
        other.url == url &&
        other.urlToImage == urlToImage &&
        other.content == content;
  }

  @override
  int get hashCode {
    return author.hashCode ^
        title.hashCode ^
        description.hashCode ^
        url.hashCode ^
        urlToImage.hashCode ^
        content.hashCode;
  }
}
