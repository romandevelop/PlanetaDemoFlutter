import 'package:flutter/material.dart';


class Demo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final item = Container(
        margin: EdgeInsets.only(left: 110.0,top: 20.0),
        child:Row(
      children: <Widget>[
        Icon(Icons.add_location,  color: Colors.white70,),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          child: Text("56.6 m km",
            style: TextStyle(color: Colors.white70),
          ),
        )
      ],
    ));



    final title = Container(
        margin: EdgeInsets.only(left: 110.0,top: 25.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
              "Mars",
              style: TextStyle(fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child:Icon(Icons.sort,color: Colors.white,)
          )
        ],
      ),
    );


    final content=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Milkyway Galaxy",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white70
          ),
        ),
        Container(
          width: 50.0,
          child:Divider(
            color: Colors.indigoAccent,
            height: 10.0,


          )),

      ],
    );


    final todo=Column(
      children: <Widget>[
        title,
        content,
        item
      ],
    );

    final card= Container(
        alignment: Alignment(-0.8, -0.8),
        height: 150.0,
        width: 500.0,
        margin: EdgeInsets.only(
          left: 50.0,
          right: 20.0,
          top: 20.0
        ),
        child: todo,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
            )
          ]
        ),


    );


    return Stack(
      alignment: Alignment(-0.95, 0.3),
        children: <Widget>[
          card,
          Image(image: AssetImage("assets/img/mars.png"),
          width: 100.0,
            height: 100.0,
          )
        ],
    );
  }
}