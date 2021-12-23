import 'package:flutter/material.dart';
import 'package:rent_it/widget/best_offer.dart';
import 'package:rent_it/widget/categories.dart';
import 'package:rent_it/widget/custom_app_bar.dart';
import 'package:rent_it/widget/custom_bottom_navigation_bar.dart';
import 'package:rent_it/widget/navigation_drawer_widget.dart';
import 'package:rent_it/widget/recommended_product.dart';
import 'package:rent_it/widget/search_input.dart';
import 'package:rent_it/widget/welcome_text.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(250),
      drawer: NavigationDrawerWidget(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedProduct(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
