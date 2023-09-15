import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/dependency_injection/inject.dart';
import 'package:restaurant/framework/controller/home/home_covid_dialog_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_search_bar_riverpod.dart';
import 'package:restaurant/ui/home/helper/home_filter.dart';
import 'package:restaurant/ui/home/helper/home_location.dart';
import 'package:restaurant/ui/home/helper/home_search_bar.dart';
import 'package:restaurant/ui/home/helper/home_tab_bar.dart';
import 'package:restaurant/ui/routing/delegate.dart';
import 'package:restaurant/ui/routing/parser.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/theme/app_colors.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:restaurant/ui/theme/device_configuration.dart';
import 'package:restaurant/ui/home/helper/home_restaurant_overview.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMobile extends ConsumerWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp.router(
      routerDelegate: getIt<MainRouterDelegate>(param1: ref.read(navigationStackProvider)),
      routeInformationParser: getIt<MainRouterInformationParser>(param1: ref,param2: context),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeMobilePage extends ConsumerStatefulWidget{
  const HomeMobilePage({super.key});

  @override
  ConsumerState<HomeMobilePage> createState() => _HomeMobilePageState();
}
class _HomeMobilePageState extends ConsumerState<HomeMobilePage>{

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) { ref.watch(homeCovidDialogProvider).updateDialogValue();});
  }

  Widget covidDialog(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.25,
      color: const Color(0xffCECDCD),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 60),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text("COVID-19 information",style: TextStyle(
                fontSize: 16,
                fontFamily: AppFontStyle.fontFamily,
                fontWeight: AppFontStyle.fwSemiBold,
                color: Colors.black,
              ),),
            ),
            const SizedBox(height: 10,),
            Text("Please be aware that the municipality of Dubai has issued restrictions for restaurants during the pandemic. For more information click here",
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: AppFontStyle.fwRegular,
                fontFamily: AppFontStyle.fontFamily,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 33),
              child: TextButton(onPressed: (){
                ref.watch(homeCovidDialogProvider).updateDialogValue();
              },
                  child: const Text("OK",style: TextStyle(
                      fontSize: 18,
                      fontFamily: AppFontStyle.fontFamily,
                      fontWeight: AppFontStyle.fwSemiBold,
                      color: Colors.black
                  ),)
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    mobileDeviceConfiguration(context);

    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: ref.watch(homeCovidDialogProvider).isAppOpened ? null
          : PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: AppColors.bgcolor,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: HomeTabBar(),
            )
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ref.watch(homeCovidDialogProvider).isAppOpened ? Column(
                children: [
                  covidDialog(),
                  const IgnorePointer(child: HomeFilter()),
                  IgnorePointer(child: HomeRestaurantOverview())
                ],
              ) : Column(
                children: [
                  const HomeLocation(),
                  const HomeSearchBar(),
                  const HomeFilter(),
                  ref.watch(homeSearchBarProvider).isSearched?
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text("No Restaurants Found",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: AppFontStyle.fwRegular,
                          fontFamily: AppFontStyle.fontFamily),),
                  )
                      : HomeRestaurantOverview(),
                  //SvgPicture.asset('assets/images/svgwallpaper.svg')
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}





