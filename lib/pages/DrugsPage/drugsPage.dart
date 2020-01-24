import 'package:cardio_help/objects/custom_drawer/custom_navigator_drawer.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/CareTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/InteractionTab.dart';
import 'package:flutter/material.dart';


class DrugsPage extends StatefulWidget {
  final Color backgroundColor;
  final Map medicamento;

  const DrugsPage(
    { 
      Key key,
      @required this.medicamento,
      @required this.backgroundColor
    }
  ): super(key: key); 

  @override
  _DrugsPageState createState() {
    return new _DrugsPageState();
  }
}

class _DrugsPageState extends State<DrugsPage>
    with SingleTickerProviderStateMixin {
  double maxWidth = 300;
  double minWidth = 70;
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;
 
  List tabs;
  @override
  void initState() {
    this.tabs = [
    Container(),                                  //Informações
    CareTab(medicamento: widget.medicamento,),    //Cuidados
    Container(),//Classificação
    Container(),//Evento Adverso
    Container(),//Uso Terapêutico
    InteractionTab(medicamento: widget.medicamento,)//Interação
  ];
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: widget.backgroundColor,
          title: new Center(child: new Text(widget.medicamento["name"], textAlign: TextAlign.center)),
        ),
      body: Stack(
          children: <Widget>[
            
            // Container(
            //   margin: EdgeInsets.only(left: 80),  
            //   child: this.tabs[currentSelectedIndex],
            // ),
            this.tabs[currentSelectedIndex],
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, widget) => getWidget(context, widget),
            ),
          ],
        ),
        
      
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: this.widget.backgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
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
                      title: itens[counter].title,
                      icon: itens[counter].icon,
                      animationController: _animationController,
                  );
                },
                itemCount: itens.length,
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
