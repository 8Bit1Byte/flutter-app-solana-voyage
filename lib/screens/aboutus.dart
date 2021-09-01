import 'package:cryptocurrency_app/widgets/customnavigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 50),
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 15,
                            bottom: 20),
                        color: Color(0xff071d40),
                        child: Center(
                          child: Container(
                              padding: EdgeInsets.only(
                                  top: 42, bottom: 42, left: 10, right: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3.0, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(140.0)),
                                color: Color(0xff071d40),
                              ),
                              child: Container(
                                  height: 35,
                                  child:
                                      Image.asset('assets/images/splash.png'))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        color: Color(0xff071d40),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'ABOUT US',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Join Us',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.podcast,
                        size: 40,
                        color: Color(0xff1b4dff),
                      ),
                      FaIcon(
                        FontAwesomeIcons.discord,
                        size: 40,
                        color: Color(0xff1b4dff),
                      ),
                      FaIcon(
                        FontAwesomeIcons.blog,
                        size: 40,
                        color: Color(0xff1b4dff),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Build Crypto Apps that Scale',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Solana is a fast, secure, and censorship resistant blockchain providing the open infrastructure required for global adoption.',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 50.0,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Color(0xff1b4dff),
                                textColor: Colors.white,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text("Start Building",
                                          style: TextStyle(fontSize: 15)),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 50.0,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Color(0xff1b4dff),
                                textColor: Colors.white,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Learn More",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Try to Break Solana',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Solana can process 50k transactions per second. Don\'t believe us? Stress test the network to experience Solana\'s speed for yourself.',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 50.0,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Color(0xff1b4dff),
                                textColor: Colors.white,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Play Now",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,)
                ])),
      ),
      CollapsingNavigationDrawer(selectedIndex: 5)
    ]);
  }
}
