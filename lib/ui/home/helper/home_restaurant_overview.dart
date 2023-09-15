import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/ui/restaurant_details/mobile/restaurant_details_mobile.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/theme/app_colors.dart';
import 'package:restaurant/ui/theme/tex_styles.dart';
import 'package:restaurant/ui/theme/assets_location.dart';
import 'package:restaurant/framework/repository/home/model/home_restaurant_overview_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeRestaurantOverview extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: RestaurantOverviewModel.restaurants.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return SizedBox(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.width*0.99,
            child: GestureDetector(
              onTap: (){
                ref.watch(navigationStackProvider).push(NavigationStackItem.RestaurantDetailsMobile(index: index));
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(RestaurantOverviewModel.restaurants[index].restaurantImage!),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width*(210/375),
                    left: 50,
                    right: 50,
                    child: PhysicalModel(
                      elevation: 10,
                      color: Colors.black,
                      clipBehavior: Clip.hardEdge,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(13),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.18,
                        width: MediaQuery.of(context).size.width*0.6,
                        color: AppColors.lightgrey,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 9,left: 10,right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.star,color: Colors.black,size: 18,),
                                  const SizedBox(width: 5,),
                                  Text(RestaurantOverviewModel.restaurants[index].rating!.toString(),style: TextStyles.ratingTextStyle)
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 35,right: 35),
                                child: Text(RestaurantOverviewModel.restaurants[index].restaurantName!,textAlign: TextAlign.center,style: TextStyles.restaurantNameTextStyle,),
                              ),
                              const SizedBox(height: 10,),
                              Expanded(child: Text(RestaurantOverviewModel.restaurants[index].restaurantType!,style: TextStyles.restaurantTypeTextStyle,)),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,size: 16,color: Colors.black.withOpacity(0.7),),
                                        Text("${RestaurantOverviewModel.restaurants[index].restaurantDistance} km",style: TextStyles.distanceTextStyle,)
                                      ],
                                    ),
                                  ),
                                  Expanded(flex: 1,child: Text('${RestaurantOverviewModel.restaurants[index].doller}',style: TextStyles.dollerTextStyle,)),
                                  Row(
                                    children: [
                                      Icon(Icons.chat_bubble_outline_outlined,size: 14,color: Colors.black.withOpacity(0.7),),
                                      const SizedBox(width: 3,),
                                      Text('${RestaurantOverviewModel.restaurants[index].totalComments}',style: TextStyles.commentTextStyle,)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
