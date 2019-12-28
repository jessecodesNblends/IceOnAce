import 'package:flutter/material.dart';

// Models import
import '../models/product.dart';

// IceOnAce imports
import '../widgets/smoothies_header_widget.dart';
import '../widgets/specialities_widget.dart';
import '../widgets/all_products_widget.dart';

class Home extends StatefulWidget {

	@override
	State<StatefulWidget> createState() {
		return HomeState();
	}
}

class HomeState extends State<Home> {
	final products = [
		Product(title: "Mango", price: 2.50, type: "Smoothie"),
		Product(title: "Green Power", price: 4.00, type: "Smoothie"),
		Product(title: "Pineapple Ice", price: 3.20, type: "Smoothie"),
		Product(title: "Sobolo", price: 1.50, type: "Smoothie"),
		Product(title: "Brukina", price: 2.00, type: "Smoothie"),
		Product(title: "Pitoo", price: 3.20, type: "Smoothie"),
		Product(title: "Brukutu", price: 2.50, type: "Smoothie"),
		Product(title: "Vanilla Ice", price: 4.00, type: "Smoothie"),
		Product(title: "Vodka Cream", price: 3.20, type: "Smoothie"),
		Product(title: "Strawberry", price: 2.50, type: "Smoothie"),
		Product(title: "Melon Ice", price: 4.00, type: "Smoothie"),
		Product(title: "Blue Squash", price: 3.20, type: "Smoothie"),
		Product(title: "Raspberry", price: 1.50, type: "Smoothie"),
		Product(title: "Peach Mango Banana", price: 2.00, type: "Smoothie"),
		Product(title: "Cantaloupe", price: 3.20, type: "Smoothie"),
		Product(title: "Coconut water", price: 2.50, type: "Smoothie"),
		Product(title: "Frozen Orange Juice", price: 4.00, type: "Smoothie"),
		Product(title: "Mexican Coffee", price: 3.20, type: "Smoothie"),
	];

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.symmetric(horizontal: 6),
			child: SingleChildScrollView(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						SmoothiesHeader(),
						Specialities(products),
						AllProducts(products)
					],
				),
			),
		);
	}
}
