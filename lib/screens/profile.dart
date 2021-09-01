import 'package:cryptocurrency_app/widgets/customnavigation.dart';
import 'package:flutter/material.dart';

import '../transfer_sol_example.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController controller = TextEditingController();

  String name = "";
  String key = pubkey.substring(0, 7) + '......' + pubkey.substring(36, 43);

  @override
  Widget build(BuildContext context) {
    print(pubkey);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 50),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'David',
                    style: TextStyle(
                        color: Color(0xff1b4dff),
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    key,
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xff1b4dff),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'COPY',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xff1b4dff),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'SHARE',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Term of Use',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand'),
                  ),
                ),
              ],
            ),
          ),
        ),
        CollapsingNavigationDrawer(selectedIndex: 0),
      ]),
    );
  }
}
