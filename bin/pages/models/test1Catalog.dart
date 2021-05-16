class Test {
  List<Product> products;

  Test.fromJson(Map<String, dynamic> json) {
    products =
        List.from(json['product']).map((e) => Product.fromJson(e)).toList();
  }
  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['product'] = products.map((e) => e.toJson()).toList();

    return data;
  }
}

class Product {
  Item item;
  Product.fromJson(Map<String, dynamic> json) {
    item = Item.fromJson(json['item']);
  }
  Map<String, dynamic> toJson() {
    return {'item2': item.toJson()};
  }
}

class Item {
  Item1 item1;

  Item.fromJson(Map<String, dynamic> json) {
    item1 = Item1.fromJson(json['item1']);
  }
  Map<String, dynamic> toJson() {
    return {'item2': item1.toJson()};
  }
}

class Item1 {
  String item2;

  Item1.fromJson(Map<String, dynamic> json) {
    item2 = json['item2'];
  }

  Map<String, dynamic> toJson() {
    return {'item2': item2};
  }
}
