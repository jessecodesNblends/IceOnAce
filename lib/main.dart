import 'package:flutter/material.dart';
import 'package:ice_on_ace/models/product.dart';

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
					return Card(
						child: Row(
							children: <Widget>[
								Container(
									margin: EdgeInsets.all(8),
									padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
									decoration: BoxDecoration(
										border: Border.all(width: 2, color: LIGHTLIME), 
										borderRadius: BorderRadius.all(Radius.circular(8))),
									child: Text("IMG"),
								),
								Container(
									child: Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: <Widget>[
											Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: <Widget>[
													Text(products[index].type),
													Text(products[index].title),
													Text("${products[index].price.toStringAsFixed(2)}GH", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
												],
											),
										],
									),
								),
							],
						),
					);
				}
			),
		);
	}
}