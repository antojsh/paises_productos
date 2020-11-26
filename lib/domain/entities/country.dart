class Country {
  int id;
  String code;
  String urlImage;
  String symbol;
  String name;

  Country(
      {this.id, this.code, this.urlImage, this.symbol, this.name});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['ID'] ?? 0,
      code: json['Code'] ?? "",
      urlImage: json['UrlImage'] ?? "",
      symbol: json['Symbol'] ?? "",
      name: json['Name'] ?? "",
    );
  }

  static List<Country> fromJSONList(List<dynamic> jsonlist) {
    List<Country> items = List<Country>();
    jsonlist.forEach((dynamic json) {
      items.add(Country.fromJson(json));
    });
    return items;
  }
}
// {"Code":"+598","ID":7,"UrlImage":"https://rockbucket1.s3.us-east-2.amazonaws.com/images/uruguay.png","Symbol":"UR","Name":"Uruguay"}
