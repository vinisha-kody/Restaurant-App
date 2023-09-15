import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_search_bar_riverpod.dart';

class HomeSearchBar extends ConsumerStatefulWidget {
  const HomeSearchBar({super.key});


  @override
  ConsumerState<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends ConsumerState<HomeSearchBar> {

  @override
  Widget build(BuildContext context) {

    final searchBarprovider = ref.watch(homeSearchBarProvider);

    return Container(
      color: const Color(0xff5F524B),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 1,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 20
                )]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.left,
                    textInputAction: TextInputAction.search,
                    cursorColor: Color(0xff5F524B).withOpacity(0.8),
                    cursorWidth: 1.7,
                    cursorRadius: const Radius.circular(5),
                    style: TextStyle(color: const Color(0xff100F0E).withOpacity(0.7),fontSize: 18,fontFamily: AppFontStyle.fontFamily),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Restaurants or Cuisine Types",
                      hintStyle: TextStyle(fontSize: 17,fontWeight: AppFontStyle.fwRegular,fontFamily: AppFontStyle.fontFamily)
                    ),
                    onSubmitted: (value){
                      searchBarprovider.updateValue();
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}