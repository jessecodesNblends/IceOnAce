import 'package:flutter/foundation.dart';

class Product {
	String title;
	String type;
	double price;
  String image;

	Product({
		@required this.title, 
		@required this.price,
		@required this.type,
    this.image
	});
}