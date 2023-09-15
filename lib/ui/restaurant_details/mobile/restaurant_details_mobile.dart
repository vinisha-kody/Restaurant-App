import 'package:flutter/material.dart';
import 'package:restaurant/framework/controller/restaurant_details/restaurant_details_tab_bar_riverpod.dart';
import 'package:restaurant/framework/repository/home/model/home_restaurant_overview_model.dart';
import 'package:restaurant/ui/restaurant_details/helper/photos_tab_bar.dart';
import 'package:restaurant/ui/restaurant_details/helper/review_tab_bar.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/theme/app_colors.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';
import 'package:restaurant/ui/theme/tex_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestaurantDetailsMobile extends ConsumerStatefulWidget {
  final int index;
  RestaurantDetailsMobile({required this.index});

  @override
  ConsumerState<RestaurantDetailsMobile> createState() => _RestaurantDetailsMobileState();
}

class _RestaurantDetailsMobileState extends ConsumerState<RestaurantDetailsMobile> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController= TabController(length: 3, vsync: this);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(RestaurantOverviewModel.restaurants[widget.index].restaurantImage!),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height*0.37,
                      top: MediaQuery.of(context).size.height*0.03,
                      child: TextButton(
                          onPressed: (){
                            ref.watch(navigationStackProvider).pop();
                          },
                          child: const Text("CLOSE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: AppFontStyle.fwRegular,
                              fontFamily: AppFontStyle.fontFamily,
                              fontSize: 17
                            ),
                          )
                      )
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.36,
                    left: MediaQuery.of(context).size.width*0.05,
                    child: Row(
                      children: [
                       Icon(Icons.favorite_outline,
                         color: Colors.white.withOpacity(0.6),
                         size: 23,
                       ),
                        const SizedBox(width: 13,),
                        Icon(Icons.ios_share,color: Colors.white.withOpacity(0.6),size: 23,),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.19,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xfff9f3f2),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17,bottom: 17,left: 20,right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.star,color: Colors.black,size: 18,),
                          const SizedBox(width: 5,),
                          Text(RestaurantOverviewModel.restaurants[widget.index].rating!.toString(),style: TextStyles.ratingTextStyle)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 35,right: 35),
                        child: Text(RestaurantOverviewModel.restaurants[widget.index].restaurantName!,textAlign: TextAlign.center,style: TextStyles.restaurantNameTextStyle,),
                      ),
                      const SizedBox(height: 10,),
                      Expanded(child: Text(RestaurantOverviewModel.restaurants[widget.index].restaurantType!,style: TextStyles.restaurantTypeTextStyle,)),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 16,color: Colors.black.withOpacity(0.7),),
                                Text("${RestaurantOverviewModel.restaurants[widget.index].restaurantDistance} km",style: TextStyles.distanceTextStyle,)
                              ],
                            ),
                          ),
                          Expanded(flex: 1,child: Text('${RestaurantOverviewModel.restaurants[widget.index].doller}',style: TextStyles.dollerTextStyle,)),
                          Row(
                            children: [
                              Icon(Icons.chat_bubble_outline_outlined,size: 14,color: Colors.black.withOpacity(0.7),),
                              const SizedBox(width: 3,),
                              Text('${RestaurantOverviewModel.restaurants[widget.index].totalComments}',style: TextStyles.commentTextStyle,)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff5F574B)),
                  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: AppFontStyle.fontFamily,
                    fontWeight: AppFontStyle.fwMedium,
                  ))
                ),
                  onPressed: (){
                  ref.watch(navigationStackProvider).push(const NavigationStackItem.ReservationMobile());
              }, child: const Text("MAKE A RESERVATION")),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("OPEN",
                    style: TextStyle(
                      color: Color(0xff3F7E00),
                      fontWeight: AppFontStyle.fwSemiBold,
                      fontFamily: AppFontStyle.fontFamily,
                      fontSize: 16,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("7am – 10:30pm (Today)",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: AppFontStyle.fwRegular,
                      fontFamily: AppFontStyle.fontFamily,
                      fontSize: 16,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Divider(color: Colors.black.withOpacity(0.3),thickness: 0.5,),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  itemCount: RestaurantOverviewModel.aboutRestaurant.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 15),
                      child: Row(
                        children: [
                          const Icon(Icons.done,size: 15,color: Color(0xff3F7E00),),
                          const SizedBox(width: 10,),
                          Text('${RestaurantOverviewModel.aboutRestaurant[index]}',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontFamily: AppFontStyle.fontFamily,
                              fontWeight: AppFontStyle.fwRegular,
                              color: Colors.black.withOpacity(0.7)
                            ),
                          )
                        ],
                      ),
                    );
                  }
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Divider(color: Colors.black.withOpacity(0.3),thickness: 0.5,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("46 Bukit Pasoh Road, Singapore 089858",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: AppFontStyle.fwRegular,
                      fontFamily: AppFontStyle.fontFamily,
                      fontSize: 16,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffE33744).withOpacity(0.3),
                      radius: 15,
                      child: const Icon(Icons.phone_enabled_rounded,color: Colors.black,),
                    ),
                    const SizedBox(width: 10,),
                    Text("+65 6327 8378",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontFamily: AppFontStyle.fontFamily,
                        fontWeight: AppFontStyle.fwRegular,
                        color: Colors.black.withOpacity(0.7)
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,),

              TabBar(
                physics: const NeverScrollableScrollPhysics(),
                unselectedLabelColor: Colors.black,
                automaticIndicatorColorAdjustment: true,
                labelColor: Colors.black,
                controller: tabController, 
                  indicatorWeight: 7,
                  indicatorColor: Color(0xff5F524B),
                  tabs: const [
                    Tab(text: "Review",),
                    Tab(text: "Menu",),
                    Tab(text: "Photos",)
                  ]
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                  child:
                  TabBarView(
                    controller: tabController,
                  children: [
                    const ReviewTabBar(),
                    const SizedBox(height: 500,),
                    PhotosTabBar()
                  ]
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
