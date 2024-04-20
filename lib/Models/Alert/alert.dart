class AlertIntrusion {
  String id = "";
  List <String> photourl = [];

  AlertIntrusion({
    this.id = "",
    this.photourl = const[],
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'photourl': photourl,
      };

  static AlertIntrusion fromJson(Map<String, dynamic> Json) => AlertIntrusion(
        id: Json['id'],
        photourl: ListToString(Json['photourl']),
      );

  static List<String> ListToString(List<dynamic> list){
    List<String> lofS =[];
    list.forEach((element) {lofS.add(element.toString());});
    return lofS;
  }
}
