import 'package:flutter/material.dart';

class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = [
    'Top Recommended',
    'Near You',
    'Agency Recommended',
    'Most Popular'
  ];
  int currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){
              setState(() {
                currentSelected = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: currentSelected == index
                          ?Theme.of(context).primaryColor
                          :Colors.transparent,
                      width: 3,
                  ),
                ),
              ),
              child: Text(
                categoriesList[index],
                style: TextStyle(
                  color: currentSelected == index
                      ?Theme.of(context).primaryColor
                      :Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: currentSelected == index ? 16:14,
                  fontWeight: currentSelected == index ? FontWeight.bold : FontWeight.normal
                ),
              ),
            ),
          ),
          separatorBuilder: (_,index)=> SizedBox(width: 16,),
          itemCount: categoriesList.length),
    );
  }
}
