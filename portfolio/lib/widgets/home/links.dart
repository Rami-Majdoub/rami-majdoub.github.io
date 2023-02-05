import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

const _links = [
	{
		'link': 'mailto:rami.majdoub1@gmail.com',
		'img': 'https://img.icons8.com/color/48/null/gmail-new.png',
	},
  {
		'link': 'https://www.linkedin.com/in/rami-majdoub',
		'img': 'https://img.icons8.com/color/48/null/linkedin.png',
	},
	{
		'link': 'https://play.google.com/store/apps/dev?id=5062021615357372146',
		'img': 'data:image/png;base64,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',
	},
	{
		'link': 'https://goerli.etherscan.io/address/0x8fb44d71c26096af02d8cad7da64c726dac49edc',
		'img': 'https://img.icons8.com/color/48/null/ethereum.png',
	},
	{
		'link': 'https://github.com/Rami-Majdoub',
		'img': 'https://img.icons8.com/nolan/48/github.png',
    // https://img.icons8.com/fluency/48/null/github.png
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
