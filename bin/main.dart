import 'dart:convert';
import 'dart:io';
import 'pages/models/productsCatalog.dart';
import 'pages/models/testModel.dart';
import 'pages/models/universityCatalog.dart';
import 'pages/models/informationCatalog.dart';

void main() {
  // forInformation();
  // forUniversity();
  // forProducts();
  forTest();
}

void forInformation() async {
  var json = await File('assets/information.json').readAsString();
  var decodedData = jsonDecode(json);
  var information = Information.fromJson(decodedData);

  print('Name: ${information.name}');
  print('email: ${information.email}');
  print('University: ${information.university}');
  print('Depatment: ${information.dept}');
  print('Location: ${information.location}');
  for (var i in information.languages) {
    print('Language: $i');
  }
  for (var i in information.skills) {
    print('Skill: $i');
  }
}

void forUniversity() async {
  var json = await File('assets/university.json').readAsString();
  var decoded = jsonDecode(json);
  var obj = University.fromJson(decoded);

  var university = obj.university;
  for (var i = 0; i < university.length; i++) {
    print('${university[i].webPage} $i');
  }
}

void forProducts() async {
  var json = await File('assets/products.json').readAsString();
  var decoded = jsonDecode(json);
  var products = ProductsCatalog.fromJson(decoded);

  print(products.products[0].mobiles[0]);
  print(products.products[0].laptops[0]);
  print(products.products[1].os[0]);
  print(products.products[1].price.iphone);
}

void forTest() async {
  var json = await File('assets/test.json').readAsString();
  var decoded = jsonDecode(json);
  var obj = TestCatalog.fromJson(decoded);

  print(obj.products[0].item1.cream[0]);
  print(obj.products[1].item2.oil[0]);
}
