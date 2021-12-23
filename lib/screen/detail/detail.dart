import 'package:flutter/material.dart';
import 'package:rent_it/model/product.dart';
import 'package:rent_it/screen/detail/widget/about.dart';
import 'package:rent_it/screen/detail/widget/content_intro.dart';
import 'package:rent_it/screen/detail/widget/detail_app_bar.dart';
import 'package:rent_it/screen/detail/widget/product_info.dart';

class Detail extends StatelessWidget {
  final Product product;
  const Detail({Key? key,
    required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(product: product),
            SizedBox(height: 20,),
            ContentIntro(product: product,),
            SizedBox(height: 20,),
            ProductInfo(),
            SizedBox(height: 20,),
            About(product: product,),
            SizedBox(height: 24,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: (){
                  
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Book Now",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
