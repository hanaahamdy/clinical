class CharcterModel
{dynamic char_id;
String? name;
String? birthday;
List<String> occupation=[];
 String? img;
String? status;
String? nickname;
List<int> appearance=[];
String? portrayed;
String? category;
List?  better_call_saul_appearance;

CharcterModel.fromJason(Map<String,dynamic>json)
{
  char_id=json["char_id"];
  name=json["name"];
  birthday =json["birthday"];
  occupation=json["occupation"].cast<String>();
  img=json["img"];
  status=json["status"];
  nickname=json["nickname"];
  appearance=json["appearance"].cast<int>();
  portrayed=json["portrayed"];
  category=json["category"];
//  if (json['better_call_saul_appearance'] != null) better_call_saul_appearance= <Null>[];
//  json['better_call_saul_appearance'].forEach((v) {
//    better_call_saul_appearance!.add(CharcterModel.fromJason(v));
  better_call_saul_appearance= json["better_call_saul_appearance"];

}






}


//class CharcterModel {
//  int? charId;
//  String? name;
//  String? birthday;
//  List<String>? occupation;
//  String? img;
//  String? status;
//  String? nickname;
//  List<int>? appearance;
//  String? portrayed;
//  String? category;
//  List<Null>? betterCallSaulAppearance;
//
//  CharcterModel(
//      {this.charId,
//        this.name,
//        this.birthday,
//        this.occupation,
//        this.img,
//        this.status,
//        this.nickname,
//        this.appearance,
//        this.portrayed,
//        this.category,
//        this.betterCallSaulAppearance});
//
//  CharcterModel.fromJson(Map<String, dynamic> json) {
//    charId = json['char_id'];
//    name = json['name'];
//    birthday = json['birthday'];
//    occupation = json['occupation'].cast<String>();
//    img = json['img'];
//    status = json['status'];
//    nickname = json['nickname'];
//    appearance = json['appearance'].cast<int>();
//    portrayed = json['portrayed'];
//    category = json['category'];
//    if (json['better_call_saul_appearance'] != null) {
//      betterCallSaulAppearance = <Null>[];
//      json['better_call_saul_appearance'].forEach((v) {
//        betterCallSaulAppearance!.add(new Null.fromJson(v));
//      });
//    }
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['char_id'] = this.charId;
//    data['name'] = this.name;
//    data['birthday'] = this.birthday;
//    data['occupation'] = this.occupation;
//    data['img'] = this.img;
//    data['status'] = this.status;
//    data['nickname'] = this.nickname;
//    data['appearance'] = this.appearance;
//    data['portrayed'] = this.portrayed;
//    data['category'] = this.category;
//    if (this.betterCallSaulAppearance != null) {
//      data['better_call_saul_appearance'] =
//          this.betterCallSaulAppearance!.map((v) => v!.toJson()).toList();
//    }
//    return data;
//  }k
