class TestCatalog {
  List<Products> products;

  TestCatalog({this.products});

  TestCatalog.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  Item1 item1;
  Item2 item2;

  Products({this.item1, this.item2});

  Products.fromJson(Map<String, dynamic> json) {
    item1 = json['item1'] != null ? Item1.fromJson(json['item1']) : null;
    item2 = json['item2'] != null ? Item2.fromJson(json['item2']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    if (item1 != null) {
      data['item1'] = item1.toJson();
    }
    if (item2 != null) {
      data['item2'] = item2.toJson();
    }
    return data;
  }
}

class Item1 {
  List<String> cream;

  Item1({this.cream});

  Item1.fromJson(Map<String, dynamic> json) {
    cream = json['cream'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['cream'] = cream;
    return data;
  }
}

class Item2 {
  List<String> oil;

  Item2({this.oil});

  Item2.fromJson(Map<String, dynamic> json) {
    oil = json['oil'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['oil'] = oil;
    return data;
  }
}
