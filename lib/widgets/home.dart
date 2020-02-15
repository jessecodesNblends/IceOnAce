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
  
  static const IMAGE = "assets/images/orange.jpg";

	final products = [
		Product(title: "Mango", price: 2.50, type: "Smoothie", image: IMAGE),
		Product(title: "Green Power", price: 4.00, type: "Smoothie", image: IMAGE),
		Product(title: "Pineapple Ice", price: 3.20, type: "Smoothie", image: IMAGE),
		Product(title: "Sobolo", price: 1.50, type: "Smoothie", image: IMAGE),
		Product(title: "Brukina", price: 2.00, type: "Smoothie", image: IMAGE),
		Product(title: "Pitoo", price: 3.20, type: "Smoothie", image: IMAGE),
		Product(title: "Brukutu", price: 2.50, type: "Smoothie", image: IMAGE),
		Product(title: "Vanilla Ice", price: 4.00, type: "Smoothie", image: IMAGE),
		Product(title: "Vodka Cream", price: 3.20, type: "Smoothie", image: IMAGE),
		Product(title: "Strawberry", price: 2.50, type: "Smoothie", image: IMAGE),
		Product(title: "Melon Ice", price: 4.00, type: "Smoothie", image: IMAGE),
		Product(title: "Blue Squash", price: 3.20, type: "Smoothie", image: IMAGE),
		Product(title: "Raspberry", price: 1.50, type: "Smoothie", image: IMAGE),
		Product(title: "Creamsicle", price: 2.00, type: "Smoothie", image: IMAGE),
		Product(title: "Cantaloupe", price: 3.20, type: "Smoothie", image: IMAGE),
		Product(title: "Coconut water", price: 2.50, type: "Smoothie", image: IMAGE),
		Product(title: "Frozen Orange Juice", price: 4.00, type: "Smoothie", image: IMAGE),
		Product(title: "Mexican Coffee", price: 3.20, type: "Smoothie", image: IMAGE),
	];

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.symmetric(horizontal: 4),
				child: ListView(
					children: <Widget>[
						SmoothiesHeader(),
						Specialities(products),
						AllProducts(products)
					],
				),
		);
	}
}
