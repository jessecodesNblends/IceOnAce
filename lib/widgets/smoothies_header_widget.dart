import 'package:flutter/material.dart';

import '../values/colours.dart';

class SmoothiesHeader extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Row(
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
		);
	}
}