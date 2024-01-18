// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
    Id id;
    String username;
    String email;
    String password;
    RegistrationDate registrationDate;

    Users({
        required this.id,
        required this.username,
        required this.email,
        required this.password,
        required this.registrationDate,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: Id.fromJson(json["_id"]),
        username: json["username"],
        email: json["email"],
        password: json["password"],
        registrationDate: RegistrationDate.fromJson(json["registration_date"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "username": username,
        "email": email,
        "password": password,
        "registration_date": registrationDate.toJson(),
    };
}

class Id {
    String oid;

    Id({
        required this.oid,
    });

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
    };
}

class RegistrationDate {
    dynamic date;

    RegistrationDate({
        required this.date,
    });

    factory RegistrationDate.fromJson(Map<String, dynamic> json) => RegistrationDate(
        date: json["\u0024date"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024date": date,
    };
}

class DateClass {
    String numberLong;

    DateClass({
        required this.numberLong,
    });

    factory DateClass.fromJson(Map<String, dynamic> json) => DateClass(
        numberLong: json["\u0024numberLong"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024numberLong": numberLong,
    };
}
