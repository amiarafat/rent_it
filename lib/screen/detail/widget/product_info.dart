import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuInfo(imageUrl: "assets/icons/bedroom.svg", content: "Lorem Ipsum \nis simply dummy text."),
              MenuInfo(imageUrl: "assets/icons/bathroom.svg", content: "Lorem Ipsum \nis simply dummy text."),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuInfo(imageUrl: "assets/icons/kitchen.svg", content: "Lorem Ipsum \nis simply dummy text."),
              MenuInfo(imageUrl: "assets/icons/parking.svg", content: "Lorem Ipsum \nis simply dummy text."),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const MenuInfo({Key? key,
  required this.imageUrl,
  required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          SizedBox(width: 20,),
          Text(content, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),),

        ],
      ),
    );
  }
}

