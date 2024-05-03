import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/second_image.png',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'lib/images/third_image.png',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'lib/images/fourth_image.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'lib/images/first_image.png',
        description:
            'Bouncy cushioning is paired with soft and yet supportive foam'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
