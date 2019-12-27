import 'package:flutter/material.dart';

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

	@override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text("Ice On Ace"),
		),
		body: Column(
			children: <Widget>[
				Card(
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
							  				Text("Smoothie"),
							  				Text("Mango"),
							  				Text("Price", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
							  			],
							  		),
							  	],
							  ),
							),
						],
					),
				)
			],
		),
    );
  }
}