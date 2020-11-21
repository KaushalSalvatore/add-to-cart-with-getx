
import 'package:addtocart_getx/model/products.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<Products>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
//  var totalAmount = 0.0;
  addToCart(Products product) {
    cartItems.add(product);
    //totalAmount = totalPrice;
  //  update();
  }
}