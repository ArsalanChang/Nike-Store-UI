import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Nike Air Max INTRLK Lite',
        price: '\$75',
        imagePath: 'lib/images/airmax.png',
        description: 'Big Kids Shoes'
    ),
    Shoe(name: 'Nike Air Max 270',
        price: '\$160',
        imagePath: 'lib/images/airmax720.png',
        description: "Men's Shoes"
    ),


    Shoe(name: 'Jordan 6 Rings',
        price: '\$125',
        imagePath: 'lib/images/FLYEASE.png',
        description: "Women's Easy On/Off Shoes"
    ),

    Shoe(name: "Nike Air Force 1 '07",
        price: '\$115',
        imagePath: 'lib/images/airforce.png',
        description: "Men's Shoes"
    ),
    Shoe(name: 'Nike Air Max 90',
        price: '\$130',
        imagePath: 'lib/images/airmax2.png',
        description: "Women's Shoes"
    ),

  ];

  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();

  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}