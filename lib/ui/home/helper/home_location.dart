import 'package:flutter/material.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

class HomeLocation extends StatefulWidget {
  const HomeLocation({super.key});

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.location_on_sharp,size: 20,color: Colors.white.withOpacity(0.6),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Thomson",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: AppFontStyle.fwRegular,
                        fontFamily: AppFontStyle.fontFamily,
                        fontSize: 18)
                  ),
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.white.withOpacity(0.5),size: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
