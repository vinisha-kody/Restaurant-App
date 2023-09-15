import 'package:flutter/material.dart';
import 'package:restaurant/ui/theme/assets_location.dart';

class PhotosTabBar extends StatelessWidget {

  List<String> restaurantImages=[
    AssetsLocation.foodJapanese5,
    AssetsLocation.foodJapanese3,
    AssetsLocation.foodJapanese7,
    AssetsLocation.foodJapanese2,
    AssetsLocation.foodJapanese4,
    AssetsLocation.foodJapanese1,
    AssetsLocation.foodJapanese8
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 400),
      child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: restaurantImages.length,
          itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(restaurantImages[index]),
                    fit: BoxFit.cover
                  )
                ),
              );
          },
        ),
    );
  }
}
