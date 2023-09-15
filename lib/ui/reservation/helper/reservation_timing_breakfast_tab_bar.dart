import 'package:flutter/material.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

class ReservationTimingBreakfastTabBar extends StatefulWidget {
  const ReservationTimingBreakfastTabBar({super.key});

  @override
  State<ReservationTimingBreakfastTabBar> createState() => _ReservationTimingBreakfastTabBarState();
}

class _ReservationTimingBreakfastTabBarState extends State<ReservationTimingBreakfastTabBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Container(
          height: MediaQuery.of(context).size.height*0.149,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: const Color(0xff5F524B).withOpacity(0.2),width: 0.5))
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.height*0.14,
              decoration: BoxDecoration(
                color: const Color(0xff5F524B).withOpacity(0.1),
                border: Border.symmetric(vertical: BorderSide(width: 0.5,color: const Color(0xff5F524B).withOpacity(0.2)))
              ),
              child: const Center(child: Text("Not Open For Breakfast",textAlign: TextAlign.center,style: TextStyle(fontWeight: AppFontStyle.fwRegular,fontSize: 18,color: Colors.black),)),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const Padding(
            padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Text("Restaurant Terms & Conditions",style: TextStyle(color: Color(0xff5F524B),fontSize: 16,fontWeight: AppFontStyle.fwMedium,),)
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Please be informed of the following for your convenience: \nMaximum of 4 people per table \nAge Policy: 13 to 59 yrs old \nNo Alcohol and Live Music",
                  style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: AppFontStyle.fwRegular),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.17),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              //width: MediaQuery.of(context).size.width * 0.214,
              height: MediaQuery.of(context).size.height * 0.05,
              color: const Color(0xff5F524B).withOpacity(0.5),
              child: Center(
                child: Text("MAKE A RESERVATION",
                  style: TextStyle(
                    fontWeight: AppFontStyle.fwMedium,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.5)
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
