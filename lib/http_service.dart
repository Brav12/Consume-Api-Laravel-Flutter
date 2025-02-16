import 'dart:convert';
import 'package:http/http.dart' as http;
import 'product_model.dart';

class HttpService {
  final String baseURL = "http://127.0.0.1:8000/api/products"; 

  Future<List<ProductModel>> getProducts() async {
    final response = await http.get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body)['data'];
      return body.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception("Gagal mengambil data produk.");
    }
  }
    
  Future<ProductModel> getProductDetail(int id) async {
    final response = await http.get(Uri.parse("$baseURL/$id"));

    if (response.statusCode == 200) {
      return ProductModel.fromJson(jsonDecode(response.body)['data']);
    } else {
      throw Exception("Gagal mengambil detail produk.");
    }
  }
}