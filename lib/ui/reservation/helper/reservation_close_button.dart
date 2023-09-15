import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

class ReservationCloseButton extends ConsumerStatefulWidget {
  const ReservationCloseButton({super.key});

  @override
  ConsumerState<ReservationCloseButton> createState() => _ReservationCloseButtonState();
}

class _ReservationCloseButtonState extends ConsumerState<ReservationCloseButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 50,right: 30),
        child: TextButton(
          onPressed: (){
            ref.watch(navigationStackProvider).pop();
          },
          child: const Text("CLOSE",
            style: TextStyle(
              color: Color(0xff5F524B),
              fontSize: 14,
              fontWeight: AppFontStyle.fwRegular,
              fontFamily: AppFontStyle.fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
