import 'package:json_annotation/json_annotation.dart';

part 'apiMould.g.dart';

@JsonSerializable()
class ApiMould {
  final String status;
  final double conversion;
  final int httpCode;
  final List<String> message;


  ApiMould({this.status, this.conversion, this.httpCode, this.message});

  factory ApiMould.fromJson(Map<String, dynamic> json) =>
      _$ApiMouldFromJson(json);

  Map<String, dynamic> toJson() => _$ApiMouldToJson(this);
}
