import 'package:get/get.dart';
import 'package:getxflutter/data/local_db/dadabase_connect.dart';
import 'package:getxflutter/services/storage_service.dart';

Future initServices()async{
  final database = await DatabaseConnect().database;
  if(database != null){

  await Get.putAsync(() async => StorageService().init(database));
  }

}