import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    //"OIP.jpg",
    "R.jpg",
    "h.jpg",

    //"facebook.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
          return Container(
           width : double.maxFinite,
           height : double.maxFinite,
           decoration : BoxDecoration(
             image : DecorationImage(
               image : AssetImage(
                 "assets/"+images[index]
               ),
               fit : BoxFit.cover

             )
           ),
            child : Container(
              margin : const EdgeInsets.only(top : 100, left : 20, right : 20),
              child : Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children : [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size : 30,),
                      SizedBox(height : 20, ),
                      Container(
                        width : 250,
                        child : AppText(
                            text: "Mountain hikes give you freedom",
                                size : 14,
                        )
                      ),
                      ResponsiveButton(
                        //width : 10
                      )

                ],
              ),
                  Column(
                    children : List.generate(2, (indexDots){
                      return Container(
                        margin : const EdgeInsets.only(bottom : 1),
                        width : 8,
                        height : index == indexDots?25:8,
                        decoration : BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color :index == indexDots? Colors.purple:Colors.purple.withOpacity(0.3)
                        )
                      );
                    })
                  )
              ],
              )
            ),
          );
      }),
    );
  }
}

