// import 'package:flutter/material.dart';
import 'dart:io';

import 'package:path/path.dart';

import 'package:qrreaderapp/src/models/scan_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
// ya existe una base de datos en el dispositivo
    if (_database != null) return _database;

    // creamos la base de datos por que no existe

    _database = await initDB();

    return _database;
  }

// iniciar la base de datos
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentsDirectory.path, 'ScansDB.db');

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE Scans ('
          'id INTEGER PRIMARY KEY,'
          'tipo TEXT,'
          'valor TEXT'
          ')');
    });
  }

  // Crear registros en db
  newScanRaw(ScanModel nuevoScan) async {
    final db = await database;

    final res = await db.rawInsert("INSERT Into Scans (id, tipo, valor) "
        "VALUES (${nuevoScan.id}, '${nuevoScan.tipo}', '${nuevoScan.valor}')");

    return res;
  }

// Mejor forma para insertar registros
  nuevoScan(ScanModel nuevoScan) async {
    final db = await database;

    final res = await db.insert('Scans', nuevoScan.toJson());

    return res;
  }

  // Obtener datos de la bd
  Future<ScanModel> getScanId(int id) async {
    final db = await database;

    final res = await db.query('Scans', where: 'id = ?', whereArgs: [id]);

    return res.isNotEmpty ? ScanModel.fromJson(res.first) : null;
  }

  // Obtener todos los datos
  Future<List<ScanModel>> getScans() async {
    final db = await database;

    final res = await db.query('Scans');

    List<ScanModel> list =
        res.isNotEmpty ? res.map((c) => ScanModel.fromJson(c)).toList() : [];

    return list;
  }

  // Obtener todos los datos de un tipo
  Future<List<ScanModel>> getScansPorTipo(String tipo) async {
    final db = await database;

    final res = await db.query('Scans', where: 'tipo = ?', whereArgs: [tipo]);

    List<ScanModel> list =
        res.isNotEmpty ? res.map((c) => ScanModel.fromJson(c)).toList() : [];

    return list;
  }

  // Actualizar registro
  Future<int> updateScan(ScanModel nuevoScan) async {

    final db = await database;

    return await db.update('Scans',  nuevoScan.toJson(), where: 'id = ?', whereArgs:  [nuevoScan.id]);

    
  }
  // Eliminar Registros 
    Future<int> deleteScan(int id) async {

    final db = await database;

   return await db.delete('Scans',  where: 'id = ?', whereArgs: [id]);

    

  }
  // Eliminar todos Registros 
    Future<int> deleteAllScan(int id) async {

    final db = await database;

   return await db.delete('Scans');

    

  }

}
