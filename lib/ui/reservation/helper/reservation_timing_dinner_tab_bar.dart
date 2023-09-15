import 'package:flutter/material.dart';
import 'package:restaurant/framework/controller/reservation/reservation_timing_dinner_tab_bar_controller.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationTimingDinnerTabBar extends ConsumerStatefulWidget {
  const ReservationTimingDinnerTabBar({super.key});

  @override
  ConsumerState<ReservationTimingDinnerTabBar> createState() => _ReservationTimingDinnerTabBarState();
}

class _ReservationTimingDinnerTabBarState extends ConsumerState<ReservationTimingDinnerTabBar> {
  @override
  Widget build(BuildContext context) {
    final dinnerTabBarProvider = ref.watch(reservationTimingDinnerTabBarProvider);
    return Column(
      children: [
        const SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(width: 0.5,color: Color(0xff5F524B).withOpacity(0.2)))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,mainAxisExtent: 50),
                itemCount: dinnerTabBarProvider.allDinnerTimings.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      dinnerTabBarProvider.getSelectedLunchTime(index);
                      dinnerTabBarProvider.getSelectedIndex(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5,color: Color(0xff5F524B).withOpacity(0.2)),
                        color: dinnerTabBarProvider.selectedIndex == index ? Color(0xff3F7E00).withOpacity(0.4) : Color(0xffF9F3F2),
                      ),
                      height: 20,
                      child: Center(
                        child: Text(dinnerTabBarProvider.allDinnerTimings.elementAt(index),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: AppFontStyle.fwRegular,
                          ),
                        ),
                      ),
                    ),
                  );
                }
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
        SizedBox(height: MediaQuery.of(context).size.height*0.16),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              //width: MediaQuery.of(context).size.width * 0.214,
              height: MediaQuery.of(context).size.height * 0.05,
              color: const Color(0xff5F524B),
              child: const Center(
                child: Text("MAKE A RESERVATION",
                  style: TextStyle(
                      fontWeight: AppFontStyle.fwMedium,
                      fontSize: 16,
                      color: Colors.white
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
