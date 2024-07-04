
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


   var database;


  Future<Database> openDb() async {
    WidgetsFlutterBinding.ensureInitialized();
      database = openDatabase(
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
    //final db = await database;

     database.insert('dogs', dog.toMap(),nullColumnHack: null,conflictAlgorithm: ConflictAlgorithm.replace);
    print('innserted a dog at' );
  }

  readDog() {}

  updateDog() {}

  deleteDog() {}


}