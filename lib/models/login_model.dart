class LoginModel
{
  String? token;
  UserData? data;

  LoginModel.fromJson(Map<String,dynamic> json)
  {
    token = json["token"];
    data = json["data"] != null ? UserData.fromJson(json["data"]) : null;
  }
}

class UserData
{
  int? id;
  String? name;
  String? email;
  String? password;
  String? role;
  String? createdAt;
  String? updatedAt;
  int? v;

  UserData.fromJson(Map<String,dynamic> json)
  {
    id = json["id"];
    name = json["name"];
    password = json["password"];
    email = json["email"];
    updatedAt = json["updatedAt"];
    role = json["role"];
    createdAt = json["createdAt"];
    v = json["__v"];
  }
}