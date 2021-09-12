// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_directions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DirectionsDto _$_$_DirectionsDtoFromJson(Map<String, dynamic> json) {
  return _$_DirectionsDto(
    routes: (json['routes'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_DirectionsDtoToJson(_$_DirectionsDto instance) =>
    <String, dynamic>{
      'routes': instance.routes,
      'status': instance.status,
    };
