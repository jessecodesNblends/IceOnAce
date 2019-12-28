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

	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: IceOnAceColours.FADEBLUE,
			appBar: AppBar(
				title: Text("Ice On Ace"),
			),
		);
	}
}