

import 'dart:developer';

import 'package:addtocart_getx/model/products.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  var products = List<Products>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Products(
          id: 1,
          price: 30,
          productDescription: 'cheese veg sandwich',
          productImage: 'abd',
          productName: 'Snadwich'),
      Products(
          id: 2,
          price: 40,
          productDescription: 'haka noodles with red chili',
          productImage: 'abd',
          productName: 'Noodles'),
      Products(
          id: 3,
          price: 20,
          productDescription: 'with pasta with cheese mix',
          productImage: 'abd',
          productName: 'Pasta'),
    ];

 //   use [yourList.assignAll(newList)].
     products.value = productResult;

  }

}