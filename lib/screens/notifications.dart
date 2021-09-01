import 'package:cryptocurrency_app/widgets/customnavigation.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEEEE),
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 50),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Color(0xff071d40),
                    child: Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20, left: 15),
                      child: Text(
                        'NOTIFCATOINS',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100, bottom: 30),
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/nonotifcatoin.png'))),
                      ),
                      Text(
                        'No Notification Founds',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        CollapsingNavigationDrawer(selectedIndex: 2)
      ]),
    );
  }
}
