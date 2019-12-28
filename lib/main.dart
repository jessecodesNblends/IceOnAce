import 'package:flutter/material.dart';
import './widgets/home.dart';
import './values/colours.dart';



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
			body: Home(),
		);
	}
}