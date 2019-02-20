import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  List<String> vehicle=["Car","Truck", "Bus","Traveller","MiniVan"];
  String _vehicle="car";

  String _set="";

  TextEditingController controller1= new TextEditingController();
  TextEditingController controller2= new TextEditingController();
  TextEditingController controller3= new TextEditingController();
  TextEditingController controller4= new TextEditingController();
  TextEditingController controller5 = new TextEditingController();
  TextEditingController controller6 = new TextEditingController();
  TextEditingController controller7 = new TextEditingController();
  void _fillValue(String value){
    setState((){
      _set=value;
    });
  }

  void  fillVehicle(String value){
    setState((){
      _vehicle=value;
    });
  }

  void data(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Buyer/Bidder's Margin : ${controller1.text}"),
            new Text("Warranty cost : ${controller2.text}"),
            new Text("Transportation cost : ${controller3.text}"),
            new Text("RTO expenses : ${controller4.text}"),
            new Text("Insurance cost : ${controller5.text}"),
            new Text("Taxes + Penalty : ${controller6.text}"),
            new Text("Refund Cost : ${controller7.text}"),
            new Text("Vehicle : $_vehicle"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: ()=>Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context,child:alertDialog );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //leading: new Icon(Icons.list),
        title: new Text("COST TO BIDDER"),
        backgroundColor: Colors.blue,

        ),


      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
            child:  new Column(
              children: <Widget>[
                new TextField(
                  controller: controller1,
                  decoration: new InputDecoration(
                      hintText: "Buyers/Bidders Margin",
                      labelText: "Buyers/Bidders Margin",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )

                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 15.0),),
                new TextField(
                  controller: controller2,
                  //obscureText: true,
                  decoration: new InputDecoration(
                      hintText: "Warranty cost",
                      labelText: "Warranty cost",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )

                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0),),
                new TextField(
                  controller:  controller3,
                  //maxLines: 3,
                  decoration: new InputDecoration(
                      hintText: "Transportation Cost",
                      labelText: "Transportation Cost",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )

                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top:15.0),),
                new TextField(
                  controller: controller4,
                  //obscureText: true,
                  decoration: new InputDecoration(
                      hintText: "RTO Expenses",
                      labelText: "RTO Expenses",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )

                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0),),
                new TextField(
                  controller: controller5,
                  decoration: new InputDecoration(
                    hintText: "Insurance cost",
                    labelText: "Insurance Cost",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0)
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0),),
                new TextField(
                  controller: controller6,
                  decoration: new InputDecoration(
                      hintText: "Taxes + Penalty",
                      labelText: "Taxes + Penalty",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0),),
                new TextField(
                  controller: controller7,
                  decoration: new InputDecoration(
                      hintText: "Refund Cost",
                      labelText: "Refund Cost",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)
                      )
                  ),
                ),
               /* new Row(
                  children: <Widget>[
                    new Text("Vehicle    ",style: new TextStyle(fontSize: 18.0,color: Colors.blue),),
                    new DropdownButton(
                      onChanged: (String value){
                        fillVehicle(value);
                      },
                      value: _vehicle,
                      items: vehicle.map((String value){
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),*/

                new RaisedButton(
                  child: new Text("OK"),
                  color: Colors.lightBlueAccent,
                  onPressed: (){ data();},
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}

