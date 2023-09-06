import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tigabitis_interview/model/model.dart';
import 'package:tigabitis_interview/service/service.dart';


import '../model/cart.dart'; // Import your CartAdding class

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = Auth();
  final cart = CartAdding(); // Create an instance of your CartAdding class

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Products>>(
        future: auth.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('No products available.'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final product = snapshot.data?[index];
                return ListTile(
                  title: Text(product!.productName),
                  subtitle: Text("${product.productPrice} ₹"),
                  trailing:Consumer<CartAdding>(
                    builder: (context, cart, child) {
                      return IconButton(
                        icon: Icon(
                          cart.products.contains(product.productId)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: cart.products.contains(product.productId)
                              ? Colors.red
                              : null,
                        ),
                        onPressed: () {
                          int selectedProductId = product.productId;
                          if (cart.products.contains(selectedProductId)) {
                            cart.removeFromList(selectedProductId);
                          } else {
                            cart.addToList(selectedProductId);
                          }
                        },
                      );
                    },
                  )



                );
              },
            );
          }
        },
      ),
    );
  }
}
