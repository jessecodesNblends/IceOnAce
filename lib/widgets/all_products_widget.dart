import 'package:flutter/material.dart';

// IceOnAce imports
import '../values/colours.dart';
import '../models/product.dart';

class AllProducts extends StatelessWidget {
	final List<Product> products;

	AllProducts(this.products);

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
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
			    								Expanded(
													child: Container(
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
																Column(	
																	children: <Widget>[
																		Icon(Icons.favorite_border, color: Colors.red,),
																		Icon(Icons.star, color: IceOnAceColours.DESSERTRED,)
																	],
																),
															],
														),
			    								  ),
			    								),
			    							],
			    						);
			    					// );
			    				}
			    			),
			    		),
			],
		);
	}
}