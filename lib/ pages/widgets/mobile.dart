import 'package:flutter/material.dart';
import 'package:boxz_landing_page/constants/content.dart';
import 'package:boxz_landing_page/helpers/style.dart';
import 'package:boxz_landing_page/widgets/button.dart';


class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: BoxConstraints(
                maxWidth: 450
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Get noticed for ",
                      ),
                      TextSpan(
                          text: "who",
                          style: (TextStyle(fontFamily:'Code-Next-ExtraBold',fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: active)
                                  
                                ),),
                      TextSpan(
                        text: " you are, ",
                      ),
                      TextSpan(
                          text: "not what",
                          style: (TextStyle(fontFamily:'Code-Next-ExtraBold',fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: active)
                                  
                                ),),
                      TextSpan(
                        text: " you look like.",

                      ),
                    ],

                    style:(TextStyle(fontFamily:'Code-Next-ExtraBold',fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  )
                                  
                                ),),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),

        Container(
          width: 550,
          constraints: BoxConstraints(maxWidth: 550),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: (TextStyle(fontFamily:'Code-Next-ExtraBold',fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: active)
                                  
                                ),),
        ),
        SizedBox(height: 20,),

        Container(
          constraints: BoxConstraints(maxWidth: 550),
          padding: EdgeInsets.all(4),
          margin:EdgeInsets.symmetric(horizontal:20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 40),
                    blurRadius: 80
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: EdgeInsets.only(left:4),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none
                  ),
                ),
              ),

             CustomButton(text: "Get started",)
            ],
          ),
        ),

      ],

    
      
    );
    
  }
}