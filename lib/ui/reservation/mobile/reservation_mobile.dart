import 'package:flutter/material.dart';
import 'package:restaurant/ui/reservation/helper/reservation_close_button.dart';
import 'package:restaurant/ui/reservation/helper/reservation_total_person_date_tab_bar.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationMobile extends ConsumerStatefulWidget {

  const ReservationMobile({super.key});

  @override
  ConsumerState<ReservationMobile> createState() => _ReservationMobileState();
}

class _ReservationMobileState extends ConsumerState<ReservationMobile> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Color(0xffF9F3F2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReservationCloseButton(),
          SizedBox(height: 10,),
          Text("MAKE A RESERVATION",
            style: TextStyle(
              fontSize: 18,
              fontFamily: AppFontStyle.fontFamily,
              fontWeight: AppFontStyle.fwMedium,
              color: Color(0xff5F524B)
            ),
          ),
          ReservationTotalPersonDateTabBar()
        ],
      ),
    );
  }
}
