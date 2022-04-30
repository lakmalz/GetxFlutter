import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sqflite/sqflite.dart';

class StorageService extends GetxService{
  late Database database;
  final FlutterSecureStorage _secureStorage =  const FlutterSecureStorage();

  Future<StorageService> init(Database db) async {
    await GetStorage.init();
    database = db;
    return this;
  }

  write(String key, dynamic value) async {
    await GetStorage().write(key, value);
  }

  T? read<T>(String key) {
    return GetStorage().read(key);
  }

  secureWrite(String key, String? value) {
    _secureStorage.write(key: key, value: value);
  }

  Future<String?> secureRead(String key) async {
    final value = await _secureStorage.read(key: key);
    return value;
  }

  clearSecureStorage() async {
    await _secureStorage.deleteAll();
  }

}