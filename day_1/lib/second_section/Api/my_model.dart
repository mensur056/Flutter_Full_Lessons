class UserModel {
  int? password;
  int? age;
  String? name;
  String? surname;

  UserModel({this.password, this.age, this.name, this.surname});

  UserModel.fromJson(Map<String, dynamic> json) {
    password = json['userId'];
    age = json['id'];
    name = json['title'];
    surname = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = password;
    data['id'] = age;
    data['title'] = name;
    data['body'] = surname;
    return data;
  }
}
