import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  final int status;
  final List<Datum> data;
  final dynamic error;

  Users({
    required this.status,
    required this.data,
    required this.error,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "error": error,
      };
}

class Datum {
  final String id;
  final String username;
  final String email;
  final String phone;
  final String gender;

  Datum({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.gender,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "phone": phone,
        "gender": gender,
      };
}
