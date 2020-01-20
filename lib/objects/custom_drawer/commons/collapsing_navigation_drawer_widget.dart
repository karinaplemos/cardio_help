import 'package:cardio_help/objects/custom_drawer/custom_navigator_drawer.dart';
import 'package:flutter/material.dart';
import 'currentIndex.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  final Color drawerBackgroundColor;
  final bool flag;

  const CollapsingNavigationDrawer(
    { 
      Key key,
      @required this.flag,
      @required this.drawerBackgroundColor
    }
  ): super(key: key); 

  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 300;
  double minWidth = 70;
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;
 


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
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
        color: this.widget.drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: CollapsingListTile(//Voltar para pagina anterior
                    title: 'Voltar', 
                    icon: Icons.arrow_back, 
                    animationController: _animationController, 
                    onTap:() {
                     Navigator.pop(context);
                    }
                  ),
                )
              ]
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 30.0);
                },

                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                      onTap: () {
                        setState(() {
                          currentSelectedIndex = counter;
                        });
                      },
                      isSelected: currentSelectedIndex == counter,
                      title: (this.widget.flag)? itensNurse[counter].title : itensDruggist[counter].title,
                      icon: (this.widget.flag)? itensNurse[counter].icon : itensDruggist[counter].icon ,
                      animationController: _animationController,
                  );
                },
                itemCount: (this.widget.flag)? itensNurse.length : itensDruggist.length,
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
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: selectedColor,
                size: 50.0,
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
