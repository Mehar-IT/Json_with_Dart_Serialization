class Information {
  String name;
  String email;
  List<String> languages;
  List<String> skills;
  String university;
  String dept;
  String location;

  Information(
      {this.name,
      this.email,
      this.languages,
      this.skills,
      this.university,
      this.dept,
      this.location});

  Information.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    languages = json['Languages'].cast<String>();
    skills = json['skills'].cast<String>();
    university = json['University'];
    dept = json['Dept'];
    location = json['Location'];
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['Languages'] = languages;
    data['skills'] = skills;
    data['University'] = university;
    data['Dept'] = dept;
    data['Location'] = location;
    return data;
  }
}
