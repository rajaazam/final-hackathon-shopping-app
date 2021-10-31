
import 'package:flutter/material.dart';
import 'package:shopping_app/modles/food_categories_modle.dart';
import 'package:shopping_app/screen/detail_page.dart';
import 'package:shopping_app/screen/home_page.dart';
import 'package:shopping_app/screen/widget/bottom_Contianer.dart';





class Categories extends StatelessWidget {
  List<FoodCategoriesModle> list = [];
  Categories({required this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('  List of Menu  ',style: TextStyle(color: Colors.white, fontSize: 20),)),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (contet) => HomePage()));
          },
        ),
      ),
      body: GridView.count(
          shrinkWrap: false,
          primary: false,
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: list
              .map(
                (e) => BottomContainer(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          image: e.image,
                          name: e.name,
                          price: e.price,
                        ),
                      ),
                    );
                  },
                  image: e.image,
                  price: e.price,
                  name: e.name,
                ),
              )
              .toList()),
    );
  }
}