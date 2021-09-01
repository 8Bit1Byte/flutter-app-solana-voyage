import 'package:cryptocurrency_app/widgets/customnavigation.dart';
import 'package:flutter/material.dart';

class CryptoFunction extends StatelessWidget {
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
                    height: 200,
                    color: Color(0xff071d40),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, bottom: 20),
                          child: Text(
                            'SOLANA VOYAGE',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                          ),
                        ),
                        Text(
                          '\$0.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 60),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.0, color: Color(0xff1b4dff)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0) //
                                      ),
                            ),
                            child: Icon(
                              Icons.arrow_upward,
                              color: Color(0xff1b4dff),
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'SEND',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1b4dff),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.0, color: Color(0xff1b4dff)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0) //
                                      ),
                            ),
                            child: Icon(
                              Icons.arrow_downward,
                              color: Color(0xff1b4dff),
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'RECEIVE',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1b4dff),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.0, color: Color(0xff1b4dff)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0) //
                                      ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xff1b4dff),
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'ADD FUNDS',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1b4dff),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        CollapsingNavigationDrawer(selectedIndex: 1)
      ]),
    );
  }
}
