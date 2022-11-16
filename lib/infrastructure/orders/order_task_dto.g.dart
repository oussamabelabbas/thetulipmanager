// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderTaskDto _$$_OrderTaskDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderTaskDto(
      taskId: json['taskId'] as String,
      description: json['description'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$$_OrderTaskDtoToJson(_$_OrderTaskDto instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'description': instance.description,
      'isDone': instance.isDone,
    };
