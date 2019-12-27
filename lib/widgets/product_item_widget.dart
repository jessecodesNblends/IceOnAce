import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
	List<Pro>

	ProductItem();

	@override
	Widget build(BuildContext context) {
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
						);;
	}
}