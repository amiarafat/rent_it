import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_it/model/product.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              product.imageUrl,
              fit: BoxFit.fill,
              height: 400,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 28,
                      width: 28,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset("assets/icons/arrow.svg"),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset("assets/icons/mark.svg"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
