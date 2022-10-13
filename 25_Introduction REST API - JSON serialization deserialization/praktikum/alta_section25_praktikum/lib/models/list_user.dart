import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

part 'list_user.g.dart';

@JsonSerializable()
class ListUser {
  ListUser({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.datas,
  });

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'per_page')
  int perPage;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'data')
  List<Data> datas;

  factory ListUser.fromJson(Map<String, dynamic> json) =>
      _$ListUserFromJson(json);
  Map<String, dynamic> toJson() => _$ListUserToJson(this);
}
