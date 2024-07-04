import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:async/async.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

import 'Dog.dart';


class DogsDao {
  DogsDao(){
    openDb();
  }


  late Database database;


  Future<Database> openDb() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(
        join(await getDatabasesPath(),'doggie_database.db'),
        onCreate: (db,version){
          return db.execute(
            'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
          );
        },
        version: 1
    );
    return database;
  }

  closeDb() {}

//crud
  createDog(Dog dog) async{
    final db = await database;
    db.insert('dogs', dog.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);
    print('innserted a dog');
  }

  readDog() {}

  updateDog() {}

  deleteDog() {}


}