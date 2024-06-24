import 'dart:convert';
import 'package:flutter_newsapi_project/models/article_model.dart';
import 'package:http/http.dart' as http;

Future<List<ArticleModel>> getNews() async {
  String url =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1281a30539754929a3f1ca721f5d8308";
  var response = await http.get(Uri.parse(url));

  var jsonData = jsonDecode(response.body);

  List<ArticleModel> articles = [];
  if (jsonData['status'] == "ok") {
    for (var article in jsonData['articles']) {
      articles.add(ArticleModel.fromMap(article));
    }
  }
  return articles;
}



  // jsonData['articles'].forEach((element) {
  //     if (element['urlToImage'] != null && element["description"] != null) {
  //       ArticleModel articleModel = ArticleModel(
  //         title: element['title'],
  //         description: element['description'],
  //         url: element['url'],
  //         urlToImage: element['urlToImage'],
  //         content: element['content'],
  //       );
  //     }
  //   });