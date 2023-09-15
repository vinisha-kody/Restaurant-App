import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/reservation/reservation_date_tab_bar_controller.dart';
import 'package:restaurant/framework/controller/reservation/reservation_total_person_tab_bar_riverpod.dart';
import 'package:restaurant/ui/reservation/helper/reservation_date_tab_bar.dart';
import 'package:restaurant/ui/reservation/helper/reservation_total_person_tab_bar.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

class ReservationTotalPersonDateTabBar extends ConsumerStatefulWidget {
  const ReservationTotalPersonDateTabBar({super.key});

  @override
  ConsumerState<ReservationTotalPersonDateTabBar> createState() => _ReservationTotalPersonDateTabBarState();
}

class _ReservationTotalPersonDateTabBarState extends ConsumerState<ReservationTotalPersonDateTabBar> with TickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    tabController=TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dateTabProvider=ref.watch(reservationDateTabProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),
        TabBar(
            indicator: BoxDecoration(
                color: const Color(0xff5F524B).withOpacity(0.1)
            ),
            labelPadding: EdgeInsets.zero,
            controller: tabController,
            tabs: [
              Tab(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff5F524B),width: 0.06)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Icon(Icons.person_outline,size: 18,color: Color(0xff5F524B),),
                        Expanded(flex: 3,child: Text('${ref.watch(totalPersonTabBarProvider).getSelectedNumber()}',textAlign: TextAlign.center,style: const TextStyle(color: Colors.black,fontWeight: AppFontStyle.fwRegular,fontFamily: AppFontStyle.fontFamily,fontSize: 18),))
                      ],
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                    height: 80,
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
            ]
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.75,
          child: TabBarView(
              controller: tabController,
              children: const [
                ReservationTotalPersonTabBar(),
                ReservationDateTabBar()
              ]),
        ),
      ],
    );
  }
}
