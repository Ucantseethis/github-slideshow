import 'package:flutter/material.dart';
import 'package:boxz_landing_page/helpers/style.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'How it works',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Mission',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Mission',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ), Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Mission',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ), Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Mission',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
