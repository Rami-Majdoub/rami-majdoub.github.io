import 'package:flutter/material.dart';

class DevImage extends StatelessWidget {
	const DevImage({Key key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
      width: 120,
     	height: 150,
     	decoration: new BoxDecoration(
  			shape: BoxShape.rectangle,
				borderRadius: BorderRadius.all(Radius.circular(40)),
  			image: DecorationImage(
  				image: AssetImage('images/rami-majdoub.jpg'),
  				fit: BoxFit.fill,
  			),
  		),
    );
	}
}