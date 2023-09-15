import 'package:flutter/material.dart';
import 'package:restaurant/ui/theme/app_font_style.dart';

class ReviewTabBar extends StatefulWidget {
  const ReviewTabBar({super.key});

  @override
  State<ReviewTabBar> createState() => _ReviewTabBarState();
}

class _ReviewTabBarState extends State<ReviewTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text("Recommended by",
            style: TextStyle(
              color: Color(0xff5F5F5F),
              fontSize: 18,
              fontWeight: AppFontStyle.fwMedium,
              fontFamily: AppFontStyle.fontFamily,
              decoration: TextDecoration.none,
            )
            ),
          ),
          const SizedBox(height: 1,),
          const Divider(color: Color(0xff5F5F5F),thickness: 1.5,),
          const SizedBox(height: 5,),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.2,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.white,)),
                        child: const CircleAvatar(
                          backgroundColor: Color(0xff918680),
                          radius: 15,
                          child: Icon(Icons.person_rounded,color: Colors.white,),
                        ),
                      ),
                      Positioned(
                        left: 37 / 2,
                        child: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.white,)),
                          child: const CircleAvatar(
                            backgroundColor: Color(0xff918680),
                            radius: 15,
                            child: Icon(Icons.person_rounded,color: Colors.white,),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 75 / 2,
                        child: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.white,)),
                          child: const CircleAvatar(
                            backgroundColor: Color(0xff918680),
                            radius: 15,
                            child: Icon(Icons.person_rounded,color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.65,
                  child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Fauzi Mohammad',
                            style: TextStyle(color: Color(0xff3455AD))
                          ),
                          TextSpan(
                              text: ' and',
                              style: TextStyle(color: Color(0xff5F5F5F))
                          ),
                          TextSpan(
                              text: ' 142 others',
                              style: TextStyle(color: Color(0xff3455AD))
                          ),
                          TextSpan(
                              text: ' have recommended this place - try it!',
                              style: TextStyle(color: Color(0xff5F5F5F))
                          ),
                        ]
                      ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Highlighted Reviews",
              style: TextStyle(
                color: Color(0xff5F5F5F),
                fontFamily: AppFontStyle.fontFamily,
                fontWeight: AppFontStyle.fwMedium,
                fontSize: 18
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Align(
                child: Divider(
                  color: const Color(0xff5F5F5F).withOpacity(0.5),
                  thickness: 1,)
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.white,)),
                child: const CircleAvatar(
                  backgroundColor: Color(0xff918680),
                  radius: 15,
                  child: Icon(Icons.person_rounded,color: Colors.white,),
                ),
              ),
                const SizedBox(width: 10,),
                const Column(
                  children: [
                  Text("Azreena",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppFontStyle.fwMedium,
                        fontFamily: AppFontStyle.fontFamily,
                        color: Colors.black,
                      )
                  ),
                    Text("198 reviews",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppFontStyle.fwLight,
                          fontFamily: AppFontStyle.fontFamily,
                          color: Colors.black,
                        )
                    ),
                    SizedBox(height: 10,),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                      decoration: BoxDecoration(
                          color: const Color(0xff3F7E00).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.star,color: Colors.white,size: 12,),
                          SizedBox(width: 2,),
                          Text("4",style: TextStyle(fontFamily: AppFontStyle.fontFamily,color: Colors.white,fontWeight: AppFontStyle.fwMedium,fontSize: 12),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text("8 days ago",style: TextStyle(fontWeight: AppFontStyle.fwRegular,fontSize: 12),),
                  ],
                ),
                const SizedBox(height: 15,),
                RichText(
                    text: const TextSpan(
                      children:[
                        TextSpan(
                          text: "A nice and big place to hang out with friends and family. Ambience – 4/5, well arranged. Lunch during summer is hectic. Food – 5/5, food is just amazing. Service – 3/5 (rather than becoming over friendly with guests, pl…",
                          style: TextStyle(fontWeight: AppFontStyle.fwLight,fontSize: 12,color: Colors.black)
                        ),
                        TextSpan(
                          text: "read more",
                          style: TextStyle(fontWeight: AppFontStyle.fwLight,fontSize: 12,color: Color(0xff3F7E00))
                        )
                      ]
                    )
                )
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Padding(
              padding: const EdgeInsets.only(left: 60),
            child: Divider(color: Colors.black.withOpacity(0.5),thickness: 0.5),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.white,)),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff918680),
                    radius: 15,
                    child: Icon(Icons.person_rounded,color: Colors.white,),
                  ),

                ),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nana",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: AppFontStyle.fwMedium,
                          fontFamily: AppFontStyle.fontFamily,
                          color: Colors.black,
                        )
                    ),
                    Text("198 reviews",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppFontStyle.fwLight,
                          fontFamily: AppFontStyle.fontFamily,
                          color: Colors.black,
                        )
                    ),
                    SizedBox(height: 10,),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                      decoration: BoxDecoration(
                          color: const Color(0xff3F7E00).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.star,color: Colors.white,size: 12,),
                          SizedBox(width: 2,),
                          Text("5",style: TextStyle(fontFamily: AppFontStyle.fontFamily,color: Colors.white,fontWeight: AppFontStyle.fwMedium,fontSize: 12),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text("2 weeks ago",style: TextStyle(fontWeight: AppFontStyle.fwRegular,fontSize: 12),),
                  ],
                ),
                const SizedBox(height: 15,),
                RichText(
                    text: const TextSpan(
                        children:[
                          TextSpan(
                              text: "Awwwwwsome food Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehend… ",
                              style: TextStyle(fontWeight: AppFontStyle.fwLight,fontSize: 12,color: Colors.black)
                          ),
                          TextSpan(
                              text: "read more",
                              style: TextStyle(fontWeight: AppFontStyle.fwLight,fontSize: 12,color: Color(0xff3F7E00))
                          )
                        ]
                    )
                )
              ],
            ),
          ),
          const SizedBox(height: 200,)
        ],
      ),
    );
  }
}
