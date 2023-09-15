import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/reservation/reservation_date_tab_bar_controller.dart';
import 'package:restaurant/ui/reservation/helper/reservation_close_button.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

import '../../../framework/controller/reservation/reservation_total_person_tab_bar_riverpod.dart';

class ReservationForm extends ConsumerStatefulWidget {
  const ReservationForm({super.key});

  @override
  ConsumerState<ReservationForm> createState() => _ReservationFormState();
}

class _ReservationFormState extends ConsumerState<ReservationForm> {
  @override
  Widget build(BuildContext context) {

    final dateTabProvider=ref.watch(reservationDateTabProvider);

    return Scaffold(
      backgroundColor: Color(0xff9F3F2),
      body: Column(
        children: [
          const ReservationCloseButton(),
          const SizedBox(height: 10,),
          const Text("MAKE A RESERVATION",
            style: TextStyle(
                fontSize: 18,
                fontFamily: AppFontStyle.fontFamily,
                fontWeight: AppFontStyle.fwMedium,
                color: Color(0xff5F524B)
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff5F524B),width: 0.06)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Icon(Icons.person_outline,size: 23,color: Color(0xff5F524B),),
                        Expanded(flex: 3,child: Text('${ref.watch(totalPersonTabBarProvider).getSelectedNumber()}',textAlign: TextAlign.center,style: const TextStyle(color: Colors.black,fontWeight: AppFontStyle.fwRegular,fontFamily: AppFontStyle.fontFamily,fontSize: 18),))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff5F524B),width: 0.06)
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.date_range,size: 18,color: Color(0xff5F524B),),
                            const SizedBox(width: 10,),
                            Text('${dateTabProvider.selectedDay}, ${dateTabProvider.selectedDate} ${dateTabProvider.selectedMonth}',textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: AppFontStyle.fontFamily,
                                fontWeight: AppFontStyle.fwRegular,
                              ),
                            )
                          ],
                        )
                    )
                ),
              )
            ],
          ),
          const SizedBox(height: 25,),
          const Icon(Icons.watch_later_outlined,color: Color(0xff5F524B),size: 20,),
          const SizedBox(height: 10,),
          const Text("AVAILABLE TIMES",style: TextStyle(fontWeight: AppFontStyle.fwMedium,color: Color(0xff5F524B),fontSize: 16,),),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
