import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

import '../../../framework/controller/reservation/reservation_date_tab_bar_controller.dart';


class ReservationDateTabBar extends ConsumerStatefulWidget {
  const ReservationDateTabBar({super.key});

  @override
  ConsumerState<ReservationDateTabBar> createState() => _ReservationDateTabBarState();
}

class _ReservationDateTabBarState extends ConsumerState<ReservationDateTabBar> {

  Widget allDays()
  {
    List<String> allDays=["M","T","W","T","F","S","S"];
    return GridView.builder(
        itemCount: allDays.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
        itemBuilder: (context,index){
          return Center(
              child: Text(allDays[index],style: TextStyle(fontWeight: AppFontStyle.fwRegular,color: Colors.black.withOpacity(0.3),fontSize: 18),)
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    final dateTabProvider=ref.watch(reservationDateTabProvider);

    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Text(dateTabProvider.getCurrentMonth().toUpperCase(),style: const TextStyle(fontSize: 24,color: Colors.black,fontWeight: AppFontStyle.fwMedium),),
          const SizedBox(height: 15,),
          allDays(),
          GridView.builder(
              itemCount: dateTabProvider.getAllDaysOfMonthFromCurrentDate(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context,index){
                return Center(
                    child: GestureDetector(
                      onTap: (){
                        dateTabProvider.getSelectedDay(index,dateTabProvider.getCurrentMonth());
                        dateTabProvider.getSelectedDate(index,dateTabProvider.getCurrentMonth());
                        dateTabProvider.getSelectedMonth(dateTabProvider.getCurrentMonth());
                        dateTabProvider.getIndexOfMonth(index,dateTabProvider.getCurrentMonth());
                        ref.watch(navigationStackProvider).push(const NavigationStackItem.ReservationTiming());
                      },
                      child: CircleAvatar(
                        backgroundColor: dateTabProvider.indexOfCurrentMonth == index ? const Color(0xff3F7E00).withOpacity(0.3) : const Color(0xffF9F3F2),
                        radius: 30,
                        child: Text(dateTabProvider.getAllDaysOfCurrentMonth(index),
                          style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: AppFontStyle.fwRegular),
                        ),
                      ),
                    )
                );
              }
          ),
          const SizedBox(height: 30,),
          Text(dateTabProvider.getNextMonth().toUpperCase(),style: const TextStyle(fontSize: 24,color: Colors.black,fontWeight: AppFontStyle.fwMedium)),
          const SizedBox(height: 15,),
          allDays(),
          GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dateTabProvider.getAllDaysTillCurrentDate(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
              itemBuilder: (context,index){
                return Center(
                    child: GestureDetector(
                      onTap: (){
                        dateTabProvider.getSelectedDay(index,dateTabProvider.getNextMonth());
                        dateTabProvider.getSelectedDate(index,dateTabProvider.getNextMonth());
                        dateTabProvider.getSelectedMonth(dateTabProvider.getNextMonth());
                        dateTabProvider.getIndexOfMonth(index,dateTabProvider.getNextMonth());
                        ref.watch(navigationStackProvider).push(const NavigationStackItem.ReservationTiming());
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: dateTabProvider.indexOfNextMonth == index ? const Color(0xff3F7E00).withOpacity(0.3) : const Color(0xffF9F3F2),
                        child: Text(dateTabProvider.getAllDaysOfNextMonth(index),
                          style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: AppFontStyle.fwRegular),
                        ),
                      ),
                    )
                );
              }
          )
        ],
      ),
    );
  }
}
