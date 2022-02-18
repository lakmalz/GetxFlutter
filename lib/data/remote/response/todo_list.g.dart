// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoListResponse _$TodoListResponseFromJson(Map<String, dynamic> json) =>
    TodoListResponse()
      ..accountTypes = (json['accountTypes'] as List<dynamic>?)
          ?.map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TodoListResponseToJson(TodoListResponse instance) =>
    <String, dynamic>{
      'accountTypes': instance.accountTypes,
    };
