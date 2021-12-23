import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Arafat",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(
              fontSize: 16, fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 12),
          Text(
            "ভাড়া নিন, ভাড়া দিন !",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(
                fontSize: 20, fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
