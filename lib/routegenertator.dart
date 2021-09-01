import 'package:cryptocurrency_app/screens/aboutus.dart';
import 'package:cryptocurrency_app/screens/cryptofunction.dart';
import 'package:cryptocurrency_app/screens/home.dart';
import 'package:cryptocurrency_app/screens/notifications.dart';
import 'package:cryptocurrency_app/screens/onboarding.dart';
import 'package:cryptocurrency_app/screens/profile.dart';
import 'package:cryptocurrency_app/screens/search.dart';
import 'package:cryptocurrency_app/screens/settings.dart';
import 'package:cryptocurrency_app/screens/splash.dart';
import 'package:cryptocurrency_app/screens/exchange.dart';
import 'package:cryptocurrency_app/screens/transactions.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case '/SplashScreen':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/OnBoarding':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case '/Home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/Errors':
        return MaterialPageRoute(builder: (_) => CryptoFunction());
      case '/Search':
        return MaterialPageRoute(builder: (_) => Search());
      case '/Notifications':
        return MaterialPageRoute(builder: (_) => Notifications());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case '/About Us':
        return MaterialPageRoute(builder: (_) => AboutUs());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/Exchange':
        return MaterialPageRoute(builder: (_) => Exchange());
      case '/Transactions':
        return MaterialPageRoute(builder: (_) => TransactionsScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: SafeArea(
                        child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('oops! lost somewhere?'),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/Pages', arguments: 2);
                        },
                        child: Text(
                          "Go To HomePage",
                          textScaleFactor: 1.4,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        shape: StadiumBorder(),
                        color: Colors.lightGreen.withOpacity(0.8),
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ))));
    }
  }
}
