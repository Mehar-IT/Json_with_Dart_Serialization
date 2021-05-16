class ProductsCatalog {
  List<Products> products;

  ProductsCatalog({this.products});

  ProductsCatalog.fromJson(Map<String, dynamic> json) {
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
  List<String> mobiles;
  List<String> laptops;
  List<String> os;
  Price price;

  Products({this.mobiles, this.laptops, this.os, this.price});

  Products.fromJson(Map<String, dynamic> json) {
    mobiles = json['mobiles']?.cast<String>();
    laptops = json['laptops']?.cast<String>();
    os = json['os']?.cast<String>();
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['mobiles'] = mobiles;
    data['laptops'] = laptops;
    data['os'] = os;
    if (price != null) {
      data['price'] = price.toJson();
    }
    return data;
  }
}

class Price {
  String samsung;
  String iphone;
  String macbook;

  Price({this.samsung, this.iphone, this.macbook});

  Price.fromJson(Map<String, dynamic> json) {
    samsung = json['samsung'];
    iphone = json['iphone'];
    macbook = json['macbook'];
  }

  Map<String, dynamic> toJson() {
    final Map data = <String, dynamic>{};
    data['samsung'] = samsung;
    data['iphone'] = iphone;
    data['macbook'] = macbook;
    return data;
  }
}
