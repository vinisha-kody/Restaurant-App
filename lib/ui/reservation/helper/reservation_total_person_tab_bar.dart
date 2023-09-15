import 'package:flutter/material.dart';
import 'package:restaurant/framework/controller/reservation/reservation_total_person_tab_bar_riverpod.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationTotalPersonTabBar extends ConsumerStatefulWidget {
  const ReservationTotalPersonTabBar({super.key});

  @override
  ConsumerState<ReservationTotalPersonTabBar> createState() => _ReservationTotalPersonTabBarState();
}

class _ReservationTotalPersonTabBarState extends ConsumerState<ReservationTotalPersonTabBar> {

  @override
  Widget build(BuildContext context) {

    final totalPersonTabBarValue=ref.watch(totalPersonTabBarProvider);

    return GridView.builder(
      itemCount: 14,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context,index){
        int number = index + 1;
          return GestureDetector(
            onTap: (){
              totalPersonTabBarValue.selectNumber(index);
            },
            child: Center(
              child: CircleAvatar(
                radius: 30,
                  backgroundColor: totalPersonTabBarValue.selectedNumber==index ? Color(0xff3F7E00).withOpacity(0.3) : Color(0xffF9F3F2),
                  child: Text('${number++}',
                    style: const TextStyle(
                      fontWeight: AppFontStyle.fwRegular,
                      fontSize: 18,
                      color: Colors.black
                    ),
                  )
              ),
            ),
          );
        }
    );
  }
}
