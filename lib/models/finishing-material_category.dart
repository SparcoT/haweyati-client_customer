import 'images_model.dart';

class FinishingMaterial {
  String sId;
  String name;
  String description;
  Images image;
  int iV;

  FinishingMaterial(
      {this.sId, this.name, this.description, this.image, this.iV});

  FinishingMaterial.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    image = Images.fromJson(json['image']);
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['__v'] = this.iV;
    return data;
  }
}