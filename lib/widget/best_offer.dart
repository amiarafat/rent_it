import 'package:flutter/material.dart';
import 'package:rent_it/model/product.dart';
import 'package:rent_it/widget/circle_icon_button.dart';

class BestOffer extends StatelessWidget {
  final listOffer = Product.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Offer",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          ...listOffer
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(e.imageUrl),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.price,
                                style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(e.name,
                                style: Theme.of(context).textTheme.headline1!.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(e.address,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0,
                          child: CircleIconButton(
                              iconUrl: "assets/icons/heart.svg",
                              color: Colors.grey
                          ),
                      ),
                    ],
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
