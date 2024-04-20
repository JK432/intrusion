class Uuser {
  String id = "";
  String email = "";
  String name = "";
  String phurl = "";
  List<String> games = [];

  Uuser(
      {this.email = "",
      this.id = "",
      this.name = "",
      this.phurl = "",
      this.games = const []});

  Map<String, dynamic> toJson() =>
      {'id': id, 'email': email, 'name': name, 'games': games, 'phurl': phurl};

  static Uuser fromJson(Map<String, dynamic> Json) => Uuser(
      id: Json['id'],
      email: Json['email'],
      name: Json['name'],
      games: ListToString(Json['games']),
      phurl: Json['phurl']);

  static List<String> ListToString(List<dynamic> list){
    List<String> lofS =[];
    list.forEach((element) {lofS.add(element.toString());});
    return lofS;
  }
}
