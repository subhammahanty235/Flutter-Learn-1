// To parse this JSON data, do
//
//     final mongodbArticleModel = mongodbArticleModelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongodbArticleModel mongodbArticleModelFromJson(String str) => MongodbArticleModel.fromJson(json.decode(str));

String mongodbArticleModelToJson(MongodbArticleModel data) => json.encode(data.toJson());

class MongodbArticleModel {
    MongodbArticleModel({
        required this.id,
        required this.subject,
        required this.article,
        required this.userId,
    });

    ObjectId id;
    ObjectId userId;
    String subject;
    String article;

    factory MongodbArticleModel.fromJson(Map<String, dynamic> json) => MongodbArticleModel(
        id: json["_id"],
        userId : json["userId"],
        subject: json["subject"],
        article: json["article"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "userId":userId,
        "subject": subject,
        "article": article,
    };
}
