import 'package:flutter/material.dart';

// Model imports
import 'package:ice_on_ace/models/product.dart';

// IceOnAce imports
import './widgets/product_item_widget.dart';

void main () {
	runApp(
		MaterialApp(
			title: "IceOnAce",
			home: HomePage(),
		)
	);
}

class HomePage extends StatelessWidget{
	static const LIGHTLIME = Color.fromRGBO(87, 95, 58, 1);
	static const LIME = Color.fromRGBO(76, 85, 42, 1);
	static const GREEN = Color.fromRGBO(33, 65, 53, 1);

	final products = [
		Product(title: "Mango", price: 2.50, type: "Smoothie"),
		Product(title: "Green Power", price: 4.00, type: "Smoothie"),
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Ice On Ace"),
			),
			body: ListView.builder(
				itemCount: products.length,
				itemBuilder: (context, index) {
					return ProductItem();
				}
			),
		);
	}
}