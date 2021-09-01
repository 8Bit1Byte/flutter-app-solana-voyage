import 'package:flutter/material.dart';

TextStyle listTitleDefaultTextStyle = TextStyle(
    color: Colors.white70, fontSize: 15.0, fontWeight: FontWeight.w600);
TextStyle listTitleSelectedTextStyle =
    TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600);

Color selectedColor = Color(0xff1b4dff);
Color drawerBackgroundColor = Color(0xff071d40);

class NavigationModel {
  String title;
  IconData icon;
  String route;

  NavigationModel({required this.title, required this.icon, required this.route});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart, route : '/Home'),
  NavigationModel(title: "Dashboard", icon: Icons.add_circle_outline, route : '/Errors'),
  NavigationModel(title: "Notifications", icon: Icons.notifications, route : '/Notifications'),
  NavigationModel(title: "Transactions", icon: Icons.history_rounded, route : '/Transactions'),
  NavigationModel(title: "Settings", icon: Icons.settings, route : '/Settings'),
  NavigationModel(title: "About Us", icon: Icons.face_outlined, route : '/About Us'),
  NavigationModel(title: "Crypto Assets", icon: Icons.price_change, route : '/Exchange'),
];

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final String route;
  final Function onTap;

  CollapsingListTile(
      {
      required this.title,
      required this.icon,
      required this.animationController,
      this.isSelected = false,
      required this.route,
      required this.onTap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 200, end: 70).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.isSelected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? selectedColor : Colors.white30,
              size: 30.0,
            ),
            SizedBox(width: 2),
            (widthAnimation.value >= 190)
                ? Container()
                : Text(widget.title,
                    style: widget.isSelected
                        ? listTitleSelectedTextStyle
                        : listTitleDefaultTextStyle)
          ],
        ),
      ),
    );
  }
}

class CollapsingNavigationDrawer extends StatefulWidget {
  final int selectedIndex;

  CollapsingNavigationDrawer({ required this.selectedIndex});

  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 210;
  double minWidth = 52;
  bool isCollapsed = false;
  late AnimationController _animationController;
  late Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    currentSelectedIndex = widget.selectedIndex;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    widthAnimation = Tween<double>(begin: minWidth, end: maxWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            CollapsingListTile(
              title: 'David',
              icon: Icons.person,
              animationController: _animationController, onTap: ()=>{
                Navigator.of(context).pushNamed('/Profile')
                }, route: '/Profile',
            ),
            Divider(
              color: Colors.grey,
              height: 40.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 12.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                        Navigator.of(context).pushNamed(navigationItems[counter].route);
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    route: navigationItems[counter].route,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animationController,
                color: selectedColor,
                size: 35.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
