import 'package:flutter/material.dart';

class DevName extends StatelessWidget {
	const DevName({Key key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.center, // start
				children: [
					const Text(
						'Rami Majdoub',
						style: const TextStyle(
							fontWeight: FontWeight.bold,
							fontSize: 30,
						),
					),
					const Text(
						'Software developer',
						style: const TextStyle(
							fontSize: 20,
						),
					),
				],
			),
		);
	}
}