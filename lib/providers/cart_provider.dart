// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

// note: if you are using generated provider, you should run this line on terminal:
// dart run build_runner watch

@riverpod
class CartNotifier extends _$CartNotifier {

  // initial value
  @override
  Set<Product> build() {
    return const {
      // Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png')
    };
  }

  // methods to update state
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

    void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((element) => element.id != product.id).toSet();
    }
  }
}

// final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
//   return CartNotifier();
// });


