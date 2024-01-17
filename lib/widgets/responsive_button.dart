import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
   ResponsiveButton({super.key, this.width, this.isResponsive}) {

   }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height : 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color : Colors.yellow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children : [
          Image.asset("assets/button.jpg"),
          

        ],
      )
    );
  }
}

