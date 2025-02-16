class ProductModel {
  int? id;
  String? name;
  String? description;
  String? price;
  int? stock;
  String? createdAt;
  String? updatedAt;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      stock: json['stock'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}