import 'package:flutter/material.dart';
import 'package:rent_it/model/product.dart';

class ContentIntro extends StatelessWidget {
  final Product product;
  const ContentIntro({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.name,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 6,),
          Text(product.address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),),
          SizedBox(height: 12,),
          Text(product.size,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),),
          SizedBox(height: 6,),
          Text(product.price,style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
