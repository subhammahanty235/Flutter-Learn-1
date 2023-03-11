// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:basic1/MongoDBArticleModel.dart';
import 'package:basic1/dataBaseHelpers/dbconstrants.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, usersCollection, articlesCollection;
  static connect() async {
    db = await Db.create(MONGO_URI);
    await db.open();
    inspect(db);
    usersCollection = db.collection(USER_COLLECTION);
    articlesCollection = db.collection(ARTICLE_COLLECTION);
  }

  static Future<List<Map<String,dynamic>>> getdata()async{
    final data = await articlesCollection.find().toList();
    return data;
  }

  static Future<String> insert(MongodbArticleModel data)async{
    try {
      var res = await articlesCollection.insertOne(data.toJson());
      if(res.isSuccess){
          return "data inserted";
      }
      else{
        return "Unable to insert data";
      }
    } catch (e) {
      // print(e.toString());
      return e.toString();
    }
  }
}
