import 'package:flutter/material.dart';
import 'package:ice_on_ace/models/product.dart';
import 'package:ice_on_ace/values/colours.dart';

void main () {
	runApp(
		MaterialApp(
			title: "IceOnAce",
			home: HomePage(),
		)
	);
}

class HomePage extends StatelessWidget{

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
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: IceOnAceColours.FADEBLUE,
			appBar: AppBar(
				title: Text("Ice On Ace"),
			),
			body: Container(
				padding: EdgeInsets.symmetric(horizontal: 6),
			  child: SingleChildScrollView(
			  	child: Column(
			  		crossAxisAlignment: CrossAxisAlignment.start,
			  		children: <Widget>[
			  			Row(
			  				children: <Widget>[
			  					Container(
			  						margin: EdgeInsets.fromLTRB(0, 32, 8, 32),
			  						padding: EdgeInsets.all(16),
			  						decoration: BoxDecoration(
										color: Colors.white,
			  							border: Border.all(width: 2, color: Colors.white),
			  							borderRadius: BorderRadius.all(Radius.circular(32))),
			  						child: Icon(Icons.favorite, color: IceOnAceColours.GREEN,),
			  					),
			  					Text("Smoothies", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: IceOnAceColours.GREEN))
			  				],
			  			),
			    		

			    		
			    	],
			    ),
			  ),
			),
		);
	}
}