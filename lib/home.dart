import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color btnlike;

  @override
  void initState() {
    super.initState();
    btnlike = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightBlueAccent, Colors.white])),
            child: Column(
              children: <Widget>[
                Flexible(
                    flex: 2,
                    child: Container(
                        width: 500,
                        child: Image(
                          image: AssetImage("assets/paris.jpg"),
                          fit: BoxFit.fill,
                        ))),

                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image:
                                      AssetImage("assets/paris1.jpg")))),

                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 110,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image:
                                      AssetImage("assets/paris2.jpg")))),

                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image: AssetImage("assets/paris3.jpg")))),

                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image: AssetImage("assets/paris4.jpg")))),
                    ],
                  ),
                ),

                Text(""),

                Text(
                  'Places to visit in Paris',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),

                Text(""),


                Flexible(
                  flex: 4,
                  child: ListView(
                    children: <Widget>[
                      Text(
                        "If you are planning a trip to Paris, how do you decide what to do? There are the places that people dream about visiting on their first visit to Paris."
                        "Like the Eiffel Tower and the Louvre, but there are also neighborhoods to explore and new food to  try."
                        "Here are some of our trip recommendation for you to make your trip enjoyable",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                          textAlign: TextAlign.left),

                      Text(""),

                      Text(
                        "Without a doubt, the Eiffel Tower is one of the Paris' most recognizeable landmarks."
                        "It's thrilling to see the Eiffel Tower. And for the first-timers, a visit to Paris would not"
                            "be complete without a trip to Eiffel Tower"
                          "The Louvre is the world's largest art museum. This building was once home to French kings"
                          "including Louis XIV. During the French Revolution in the 18th century, the Louvre was converted"
                          "to a museum. The Louvre is massive and you could litterally spend days here"
                          "Sitting to the top of the Champs-Elysses is the Arc de Triomphe. From the top of the arc"
                          "you get one of the best views of Paris. At night, you can watch Paris sparkle are quite to see",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                          textAlign: TextAlign.left)
                      
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (btnlike == Colors.white) {
                      btnlike = Colors.red;
                    } else {
                      btnlike = Colors.white;
                    }
                  });
                },
                backgroundColor: Colors.white38,
                child: Icon(
                  Icons.favorite,
                  color: btnlike,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}