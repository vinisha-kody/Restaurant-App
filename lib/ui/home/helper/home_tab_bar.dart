import 'package:flutter/material.dart';
import 'package:restaurant/framework/controller/home/home_tab_bar_riverpod.dart';
import 'package:restaurant/ui/theme/app_colors.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTabBar extends ConsumerStatefulWidget {

  @override
  ConsumerState<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends ConsumerState<HomeTabBar>{

  List<String> tabBarItems = ["Nearby","Favourites","Reservations"];

  @override
  Widget build(BuildContext context) {

    final tabBarChanged=ref.watch(homeTabBarProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 27),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.9,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: tabBarItems.length,
          scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      tabBarChanged.updateTabValue(index);
                    },
                    child: AnimatedContainer(
                      constraints: const BoxConstraints(maxWidth: 100),
                      duration: const Duration(microseconds: 300),
                      margin: const EdgeInsets.only(right: 35),
                      height: 23,
                      decoration: BoxDecoration(
                        color: AppColors.bgcolor
                      ),
                      child: Text(tabBarItems[index],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: AppFontStyle.fontFamily,
                            fontSize: 16,
                            fontWeight: AppFontStyle.fwRegular,
                            //color: Colors.black
                            color: tabBarChanged.currentTab == index ?  Colors.white : Colors.white.withOpacity(0.6)
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: tabBarChanged.currentTab==index,
                      child: Container(
                        width: 20,
                        height: 5,
                        decoration: const BoxDecoration(shape: BoxShape.rectangle,color: Colors.white),
                      )
                  )
                ],
              );
            }
        ),
      ),
    );
  }
}
