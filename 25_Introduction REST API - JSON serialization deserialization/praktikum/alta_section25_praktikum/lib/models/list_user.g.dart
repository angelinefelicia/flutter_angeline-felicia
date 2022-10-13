// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUser _$ListUserFromJson(Map<String, dynamic> json) {
  return ListUser(
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    total: json['total'] as int,
    totalPages: json['total_pages'] as int,
    datas: (json['data'] as List<dynamic>)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListUserToJson(ListUser instance) => <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.datas,
    };
