import 'package:flutter/material.dart';

import 'package:boxz_landing_page/helpers/style.dart';

class CustomButton extends StatelessWidget {
 final  String text;
 
  const CustomButton({Key key, this.text, Future<void> Function() onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      
          color: active,
          borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(
          horizontal: 18, vertical: 12),
      child: Text(
        text,
        style: (TextStyle(fontFamily:'Code-Next-ExtraBold',fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)
                                  
                                ),
      ),
    
    );
  }
}
