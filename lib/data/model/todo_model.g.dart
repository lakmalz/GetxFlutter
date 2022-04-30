// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      creationDate: json['creationDate'] as String?,
      isChecked: json['isChecked'] as bool? ?? false,
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creationDate': instance.creationDate,
      'isChecked': instance.isChecked,
    };
