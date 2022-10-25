class Model1 {
  int age;
  String name;
  String surname;
  Model1(this.name, this.age, this.surname);
}

class Model2 {
  int? age;
  String? name;
  String? surname;
  Model2(this.age, this.name, this.surname);
}

class Model3 {
  int age;
  String name;
  String surname;
  Model3({required this.age, required this.name, required this.surname});
}

class Model4 {
  late int age;
  late String name;
  late String surname;
  Model4({required int yas, required String ad, required String soyad}) {
    age = yas;
    name = ad;
    surname = soyad;
  }
}
