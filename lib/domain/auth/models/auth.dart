import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  factory Auth({
    required String jwt
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
