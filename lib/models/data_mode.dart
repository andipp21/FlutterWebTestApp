class DataModel {
  int statusCode;
  String nim;
  String nama;
  Null productId;
  String credits;
  List<Products> products;

  DataModel(
      {this.statusCode,
      this.nim,
      this.nama,
      this.productId,
      this.credits,
      this.products});

  DataModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    nim = json['nim'];
    nama = json['nama'];
    productId = json['productId'];
    credits = json['credits'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['nim'] = this.nim;
    data['nama'] = this.nama;
    data['productId'] = this.productId;
    data['credits'] = this.credits;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int id;
  String name;
  String description;
  double price;
  String author;
  String type;
  String img;
  bool inCart;
  String category;

  Products(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.author,
      this.type,
      this.img,
      this.inCart,
      this.category});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = double.parse(json['price'].toString());
    author = json['author'];
    type = json['type'];
    img = json['img'];
    inCart = json['inCart'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['author'] = this.author;
    data['type'] = this.type;
    data['img'] = this.img;
    data['inCart'] = this.inCart;
    data['category'] = this.category;
    return data;
  }
}
