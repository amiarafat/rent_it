import 'package:flutter/material.dart';
import 'package:rent_it/model/product.dart';
import 'package:rent_it/screen/detail/detail.dart';
import 'package:rent_it/widget/circle_icon_button.dart';

class RecommendedProduct extends StatelessWidget {

  final recommendedList = Product.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 284,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=> Container(
            height: 244,
            width: 224,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Detail(product: recommendedList[index]),
                        )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          recommendedList[index].imageUrl
                        ),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: CircleIconButton(
                    iconUrl: "assets/icons/mark.svg",
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white54,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(recommendedList[index].price,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14,fontWeight: FontWeight.bold)),
                            SizedBox(height: 4,),
                            Text(recommendedList[index].name,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 12,fontWeight: FontWeight.bold)),
                            SizedBox(height: 4,),
                            Text(recommendedList[index].address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 8),),
                          ],
                        ),
                        CircleIconButton(
                            iconUrl: "assets/icons/mark.svg",
                            color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (_,index)=>SizedBox(width: 20,),
          itemCount: recommendedList.length),
    );
  }
}
