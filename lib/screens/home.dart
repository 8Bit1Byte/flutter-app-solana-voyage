import 'package:cryptocurrency_app/global.dart';
import 'package:cryptocurrency_app/screens/transactions.dart';
import 'package:cryptocurrency_app/widgets/customnavigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.only(left: 60),
            margin: EdgeInsets.only(right: 7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Hello,",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                Text(
                  "David",
                  style: TextStyle(
                      color: Color(0xff071d40),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Account Balance",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage(
                                'assets/images/logo.png',
                              ),
                              height: 28.0,
                              width: 60.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "0.00 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .apply(
                                      color: Colors.white, fontWeightDelta: 2),
                            ),
                            TextSpan(text: " SOL")
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.lock,
                            color: Colors.grey[300],
                            size: 13,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Freezing amount: 0.00 SOL",
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 10),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Flexible(
                              child: Container(
                                width: 75,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  padding: EdgeInsets.zero,
                                  color: darkBlue,
                                  onPressed: () {},
                                  child: Text(
                                    'Deposit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 75,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                color: darkBlue,
                                onPressed: () {},
                                child: Text(
                                  'Cash',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(25.0),
                                    side: BorderSide(color: Colors.white)),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 75,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                color: lightBlue,
                                onPressed: () {},
                                child: Text(
                                  ' Bill ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 200,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Color(0xff071d40),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3.0, color: Color(0xffffffff)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.0) //
                                          ),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.call_made,
                                  color: Color(0xffffffff),
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                'Pay',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff1b4dff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.0) //
                                          ),
                                ),
                                margin: EdgeInsets.only(
                                    top: 25, left: 10, right: 10),
                                child: Text(
                                  '\$ 0.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 135,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3.0, color: Color(0xffffffff)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.0) //
                                          ),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.call_received,
                                  color: Color(0xffffffff),
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                'Requests',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff1b4dff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.0) //
                                          ),
                                ),
                                margin: EdgeInsets.only(
                                    top: 25, left: 10, right: 10),
                                child: Text(
                                  '\$ 0.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff071d40),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Tender Transaction",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .apply(color: darkBlue, fontWeightDelta: 2),
                      ),
                    ),
                    Icon(Icons.timelapse, color: Colors.black.withOpacity(.71)),
                    Text(
                      "Nearly 3 days",
                      style: TextStyle(color: Colors.black.withOpacity(.71)),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "BlockChain Analysis Report",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .apply(color: darkBlue, fontWeightDelta: 2),
                          ),
                          Text(
                            "Created 07.8.2021",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.71)),
                          ),
                          Text(
                            "Originator: ExplooreX",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.71)),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "17.00 ETH",
                            style: Theme.of(context).textTheme.headline6!.apply(
                                color: Color(0xff17dcb0), fontWeightDelta: 2),
                            textAlign: TextAlign.center,
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            color: lightBlue,
                            child: Text(
                              "View",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25.0)),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransactionsScreen()),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
          CollapsingNavigationDrawer(selectedIndex: 0)
        ],
      ),
    );
  }
}
