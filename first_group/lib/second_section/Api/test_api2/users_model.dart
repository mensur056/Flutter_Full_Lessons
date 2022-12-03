class DeleteData {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  DeleteData({this.id, this.name, this.year, this.color, this.pantoneValue});

  DeleteData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    year = json['year'];
    color = json['color'];
    pantoneValue = json['pantone_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['year'] = year;
    data['color'] = color;
    data['pantone_value'] = pantoneValue;
    return data;
  }
}
