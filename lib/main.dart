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
			    		Text("Specialties",
			    			style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: IceOnAceColours.GREEN),
			    		),
			    		Container(
			    			height: 86,
			    			margin: EdgeInsets.fromLTRB(0, 4, 0, 24),
							decoration: BoxDecoration(
								borderRadius: BorderRadius.all(Radius.circular(8))
							),
			    			child: ListView.builder(
			    				scrollDirection: Axis.horizontal,
			    				itemCount: products.length,
			    				itemBuilder: (context, index) {
			    					return 
			    					Card(
			    						child: 
											Container(
												alignment: Alignment.bottomLeft,
												width: 100,
												child: Container(
													padding: EdgeInsets.all(4),
													decoration: BoxDecoration(
														color: IceOnAceColours.GREEN, 
														borderRadius: BorderRadius.only(
															bottomLeft: Radius.circular(5),
															topRight: Radius.circular(8)
														)
													),
													child:  Text(products[index].title, style: TextStyle(fontSize: 12, color: Colors.white),),
												)
											),
			    					);
			    				},
			    			),
			    		),

			    		Text("All Products",
			    			style: TextStyle(fontSize: 16, color: IceOnAceColours.GREEN),
			    		),
			    		Container(
			    			margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
			    			height: 250,
			    			child: ListView.builder(
			    				itemCount: products.length,
			    				itemBuilder: (context, index) {
			    					return 
			    					// Card(
			    					// 	child: 
			    						Row(
			    							children: <Widget>[
			    								Container(
			    									margin: EdgeInsets.fromLTRB(0, 8, 8, 8),
			    									padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
			    									decoration: BoxDecoration(
			    										border: Border.all(width: 2, color: IceOnAceColours.LIGHTLIME), 
			    										borderRadius: BorderRadius.all(Radius.circular(8))
													),
			    									child: Text("IMG"),
			    								),
			    								Container(
			    									child: Row(
			    										mainAxisAlignment: MainAxisAlignment.spaceBetween,
			    										children: <Widget>[
			    											Column(
			    												crossAxisAlignment: CrossAxisAlignment.start,
			    												children: <Widget>[
			    													Text(products[index].type, style: TextStyle(color: IceOnAceColours.GREEN),),
			    													Text(products[index].title, style: TextStyle(color: IceOnAceColours.GREEN),),
			    													Text("${products[index].price.toStringAsFixed(2)}GH", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: IceOnAceColours.GREEN),)
			    												],
			    											),
			    										],
			    									),
			    								),
			    							],
			    						);
			    					// );
			    				}
			    			),
			    		),
			    	],
			    ),
			  ),
			),
		);
	}
}