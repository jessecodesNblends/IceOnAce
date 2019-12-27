import 'package:flutter/foundation.dart';

class Product {
	String title;
	String type;
	double price;

	Product({
		@required this.title, 
		@required this.price,
		@required this.type
	});
}