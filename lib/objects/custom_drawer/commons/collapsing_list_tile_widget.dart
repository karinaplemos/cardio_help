import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animationController,
      this.isSelected = false,
      this.onTap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() { //Configuracoes da animacao do sidebar
    super.initState();
    // widthAnimation =
    //     Tween<double>(begin: 280, end: 70).animate(widget.animationController);
    // sizedBoxAnimation =
    //     Tween<double>(begin: 10, end: 0).animate(widget.animationController);
    widthAnimation =
        Tween<double>(begin: 70, end: 280).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 0, end: 10).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell( //Layout do sidebar
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.isSelected 
          ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? theme.selectedColor : Colors.white,
              size: 38.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 190)
                ? Text(widget.title,
                    style: theme.listTitleDefaultTextStyle)
                : Container()
          ],
        ),
      ),
    );
  }
}