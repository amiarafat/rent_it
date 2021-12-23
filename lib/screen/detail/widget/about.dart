import 'package:flutter/material.dart';
import 'package:rent_it/model/product.dart';

class About extends StatelessWidget {
  final Product product;
  const About({Key? key,
  required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold,),),
          SizedBox(height: 12,),
          Text(product.details,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),textAlign: TextAlign.justify,)
        ],
      ),
    );
  }
}
