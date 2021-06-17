import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

const _links = [
	{
		'link': 'mailto:rami.majdoub1@gmail.com',
		'img': 'https://img.icons8.com/color/48/000000/gmail.png',
	},
  {
		'link': 'https://www.linkedin.com/in/rami-majdoub',
		'img': 'https://img.icons8.com/color/48/000000/linkedin.png',
	},
	{
		'link': 'https://play.google.com/store/apps/dev?id=5062021615357372146',
		'img': 'https://img.icons8.com/color/48/000000/google-play.png',
	},
	{
		'link': 'https://gitlab.com/Rami-Majdoub',
		'img': 'https://img.icons8.com/color/48/000000/gitlab.png',
	},
	{
		'link': 'https://github.com/Rami-Majdoub',
		'img': 'https://img.icons8.com/color/48/000000/github.png',
	},
];

class Links extends StatelessWidget {
	const Links({Key key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			width: 300,
			child: GridView.builder(
				shrinkWrap: true,
				itemCount: _links.length,
				gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
					crossAxisCount:_links.length,
					childAspectRatio: 1,
				),
				itemBuilder: (BuildContext context, int index){
					return GestureDetector(
						onTap: (){
              _launchURL(_links[index]["link"]);
					  },
						child: Image.network(_links[index]["img"], width: 48,),
					);
				}
			),
		);
	}
}
