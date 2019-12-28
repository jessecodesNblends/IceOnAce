import 'package:flutter/material.dart';

// IceOnAce imports
import '../values/colours.dart';
import '../models/product.dart';


class Specialities extends StatelessWidget {
	final List<Product> products;

	Specialities(this.products);

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					"Specialties",
			    	style: TextStyle(
						fontSize: 16, 
						fontWeight: FontWeight.bold, 
						color: IceOnAceColours.GREEN),
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
			],
		);
	}
}
