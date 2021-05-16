class UniversityCatalog {
  String alphaTwoCode;
  String country;
  String domain;
  String name;
  String webPage;

  UniversityCatalog(
      {this.alphaTwoCode, this.country, this.domain, this.name, this.webPage});

  UniversityCatalog.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    country = json['country'];
    domain = json['domain'];
    name = json['name'];
    webPage = json['web_page'];
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['alpha_two_code'] = alphaTwoCode;
    data['country'] = country;
    data['domain'] = domain;
    data['name'] = name;
    data['web_page'] = webPage;
    return data;
  }
}

class University {
  List<UniversityCatalog> university;

  University({this.university});

  University.fromJson(List json) {
    university = <UniversityCatalog>[];
    json.forEach((e) {
      university.add(UniversityCatalog.fromJson(e));
    });
  }

  Map<String, dynamic> toJson() {
    return {'university': university.map((e) => e.toJson()).toList()};
  }
}
