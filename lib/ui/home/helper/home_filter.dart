import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/ui/theme/app_colors.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:restaurant/ui/theme/tex_styles.dart';
import 'package:restaurant/framework/controller/home/home_filter_riverpod.dart';

class HomeFilter extends ConsumerStatefulWidget {
  const HomeFilter({super.key});

  @override
  ConsumerState<HomeFilter> createState() => _HomeFilterState();
}

class _HomeFilterState extends ConsumerState<HomeFilter> {

  @override
  Widget build(BuildContext context) {

    final filterChanged=ref.watch(homeFilterProvider);

    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.bgcolor
      ),
      child: ExpansionTile(
        trailing: const SizedBox.shrink(),
        shape: InputBorder.none,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("FILTER",style: TextStyles.filterTextStyle,textAlign: TextAlign.center,),
        ),
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Price",style: TextStyle(
                fontSize: 16,
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                color: Colors.white,
              ),),
              Text("(AED)",style: TextStyle(
                fontSize: 16,
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                color: Colors.white.withOpacity(0.5),
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 10,child: Text("${filterChanged.priceMinValue.toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
                Expanded(
                  flex: 70,
                  child: RangeSlider(
                    min: 15,
                      max: 187,
                      inactiveColor: const Color(0xffAFA9A5).withOpacity(0.4),
                      activeColor: const Color(0xffAFA9A5),
                      values: RangeValues(filterChanged.priceMinValue, filterChanged.priceMaxValue),
                      onChanged: (RangeValues values){
                        filterChanged.updatePriceSlider(values);
                      }
                  ),
                ),
                Expanded(flex: 10,child: Text("${filterChanged.priceMaxValue.toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rating",style: TextStyle(
                fontSize: 16,
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                color: Colors.white,
              ),),
              Icon(Icons.star,size: 15,color: Colors.white,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 10,child: Text("${filterChanged.ratingMinValue.toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
                Expanded(
                  flex: 70,
                  child: RangeSlider(
                    min: 0,
                      max: 5,
                      inactiveColor: const Color(0xffAFA9A5).withOpacity(0.4),
                      activeColor: const Color(0xffAFA9A5),
                      values: RangeValues(filterChanged.ratingMinValue, filterChanged.ratingMaxValue),
                      onChanged: (RangeValues values){
                      filterChanged.updateRatingSlider(values);
                      }
                  ),
                ),
                Expanded(flex: 10,child: Text("${filterChanged.ratingMaxValue.toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Distance",style: TextStyle(
                fontSize: 16,
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                color: Colors.white,
              ),),
              Text("(km)",style: TextStyle(
                fontSize: 16,
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                color: Colors.white.withOpacity(0.5),
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 10,child: Text("${filterChanged.distanceMinValue .toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
                Expanded(
                  flex: 70,
                  child: RangeSlider(
                    min: 0,
                      max: 10,
                      inactiveColor: const Color(0xffAFA9A5).withOpacity(0.4),
                      activeColor: const Color(0xffAFA9A5),
                      values: RangeValues(filterChanged.distanceMinValue,filterChanged.distanceMaxValue),
                      onChanged: (RangeValues values){
                        filterChanged.updateDistanceSlider(values);
                      }
                  ),
                ),
                Expanded(flex: 10,child: Text("${filterChanged.distanceMaxValue.toInt()}",textAlign: TextAlign.center,style: TextStyles.allFilterTextStyle,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

