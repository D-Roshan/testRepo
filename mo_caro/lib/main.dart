import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Anou Planter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnouPlanter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details lor Anou Planter"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),


        body: Center(
          child: new Column(

            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: Colors.cyan[400],
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('Legumes'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoLegumes()),
                  );
                },

              ) ,//End of KaroDetails

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: Colors.cyan[400],
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('Fruits'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoFruits()),
                  );
                },

              )//End of CheckKaro

            ],
          ),



        ),


    );
  }
}

class CheckOuCaro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mo Caro check"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),// Keep for ui/ux
        ),
      ),
    );
  }
}

//LegumesDetails , FruitDetails

class FruitDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details lor mo Fruits"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),// Keep for ui/ux
        ),
      ),
    );
  }
}

class LegumesDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details lor mo legumes"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),// Keep for ui/ux
        ),
      ),
    );
  }
}


class VendOuLegumes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonne mw"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),// Keep for ui/ux
        ),
      ),
    );
  }
}

class MoLegumes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("La List ban legumes"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body:
      Center(
        child: new Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Colors.cyan[400],
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text("Pomme d'amour"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Legume1()),
                );
              },
            ) , /*
            ElevatedButton(
              child: Text("Pomme de terre"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Legume2()),
                );
              },
            ) , */ //End of KaroDetails
            //End of CheckKaro

          ],
        ),



      )
      ,
    );
  }
}
class MoFruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("La Liste ban fruits"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body:
      Center(
        child: new Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Colors.cyan[400],
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text("Banane"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fruit1()),
                );
              },
            ) , /*
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Colors.lightGreen[400],
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text("Poire"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fruit2()),
                );
              },
            ) *///End of Poire
            //End of CheckKaro

          ],
        ),

      )
      ,
    );
  }
}

class Legume1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuma plante \nPomme d'amour? "),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center( child: new SingleChildScrollView( //Used for scrollable events
          child: new Column(
              children: <Widget>[
//style:TextStyle(fontSize:18),
                Image(
                  image: AssetImage('assets/Tomato.jpeg'),
                ),
                Text('Kot pour semer: ' ,style: TextStyle(fontWeight: FontWeight.bold),), Text('Dans botte, endant ou \ndans enn place a labri\n'),
                Text('Combien letemps: ' ,style: TextStyle(fontWeight: FontWeight.bold),), Text(' 6 - 8 semaines \n'),
                Text('Quand pour transplanter: ' ,style: TextStyle(fontWeight: FontWeight.bold),), Text(' \nQuand pieds arrive entre 15 ek 25 cm \n'),
                Text('Conseil a suivre: \n',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('1. Arrose plant tous les jours.'
                    '\n2. Verse delo lor la terre dans place arrose feuilles.'
                    '\n3. Servi fertilizant dapres specialist so recommendation'
                    '\n4. Verifier nivo aciditer(pH). Li bizin ress entre 6.0-6.8 \n    pour enn meilleur recolte.'
                    '\n5. Temperatire bizin ress entre 18 - 24 degree celsius.'),
                  Text("\nEnn coup d'oeil lor letemps enn \nplante pomme d'amour prend pu grandi: \n" ,style: TextStyle(fontWeight: FontWeight.bold),) ,
                Image(
                  image: AssetImage('assets/TomatoTimeline.jpeg'),
                ),
                Text("\nFertilizant",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("NPK 17-8-25"),

                Image(
                  image: AssetImage('assets/NPK.jpeg'),
                ),
              Text("\n Urea"),
                Image(
                  image: AssetImage('assets/Urea.jpeg'),
                ),


                //Table Additional
                Column(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Plis details lor temperatir\n(Degree Celsius)",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Table(

                          // textDirection: TextDirection.rtl,
                          // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                          // border:TableBorder.all(width: 2.0,color: Colors.red),
                          children: [
                            TableRow(
                                children: [
                                  Text("Stage" , style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
                                  Text("Bas", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                  Text("Fort", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                  Text("Ideal", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Germe\n" ,style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("11",textScaleFactor: 1.5),
                                  Text("34",textScaleFactor: 1.5),
                                  Text("16-29",textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Feillaz\n",style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("18",textScaleFactor: 1.5),
                                  Text("32",textScaleFactor: 1.5),
                                  Text("21-24",textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Fruit\n",style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("SFS",textScaleFactor: 1.5),
                                  Text("18",textScaleFactor: 1.5),
                                  Text("13-18/ 19-24\n",textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Form Lycopene(Mir)\n",style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("10",textScaleFactor: 1.5),
                                  Text("30",textScaleFactor: 1.5),
                                  Text("21-24",textScaleFactor: 1.5),
                                ]
                            ),

                            TableRow(
                                children: [
                                  Text("Form carotene(photosynthese)\n",style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("10",textScaleFactor: 1.5),
                                  Text("40",textScaleFactor: 1.5),
                                  Text("21-32",textScaleFactor: 1.5),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ]
          )

      )),
    );
  }
}

/*
class Legume2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legume details 2 "),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Text(
      "\nDetails about Pomme de terre to be placed here"

      ),
    );
  }
}
*/
class Fruit1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuma plante \nBanane? "),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center( child: new SingleChildScrollView( //Used for scrollable events
          child: new Column(
              children: <Widget>[
//style:TextStyle(fontSize:18),
                Image(
                  image: AssetImage('assets/banana.jpg'),
                ),
                Text('Kot sa: ' ,style: TextStyle(fontWeight: FontWeight.bold),), Text('Direct dans la terre ek enn \nplace kot pena gros di vent\n'),
                Text('Combien letemps: ' ,style: TextStyle(fontWeight: FontWeight.bold),), Text(' 60 - 90 jours \n'),

                Text('Conseil a suivre: \n',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('1. Plante enn place kot la pluie tomber souvent ou \n    arrose plant occazionelman.'
                    '\n2. Evite plante dans place ouvert kot exposer a gros \n    rafales. Pied banane bien fragile'
                    '\n3. Defraisi gros vegetations ki block la limiere soleil \n   dans karo. Pieds banane content soleil'
                    '\n4. Quand fini rekolter, coupe tron pied banane pour \n   laisse ban plis tipti rapporter'),
                Text("\nEnn coup d'oeil lor letemps enn \nrezim banane prend pu grandi: \n" ,style: TextStyle(fontWeight: FontWeight.bold),) ,
                Image(
                  image: AssetImage('assets/BananaTimeline.jpg'),
                ),

              ]
          )

      )),
    );
  }
}
/*
class Fruit2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruit details 2 "),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Text(
          "\nDetails about Poire to be placed here"

      ),
    );
  }
}

 */



class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.green[400],),

      body: Center(
        child: new Column(
          children: <Widget>[



            Text('Bienvenue lor applikasion ', style:TextStyle(fontSize:18),),
            Text('Anou Planter ' ,style: TextStyle(fontWeight: FontWeight.bold)),
          Text('pour okip ou karo ek apran kuma planter', style:TextStyle(fontSize:18),),
            Image(
              image: AssetImage('assets/LogoHome.jpeg'),
            ),

            Text("\n Ou pena oken sensor conekte dans ou plantation",style:TextStyle(color: Colors.red[300],),),

            Text("\n Tous korek dans ou plantation", style:TextStyle(fontSize:18,fontWeight: FontWeight.bold),),

          ]
        )



      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Anou Planter', style: TextStyle(color: Colors.white,)),
              decoration: BoxDecoration(
                color: Colors.green[300],
              ),
            ),
            ListTile(
              title: Text('Anou Planter'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnouPlanter()),
                );
              },
            ),
            ListTile(
              title: Text('Check ou Caro'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOuCaro()),
                );
              },
            ),
            ListTile(
              title: Text('Chek greenhouse'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckGreenhouse()),
                );
              },
            ),
            ListTile(
              title: Text('Vend Ou legumes'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => VendOuLegumes()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



class CheckGreenhouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts and Warnings"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
        child: new Column(

          children: <Widget>[

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Colors.red[400],
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                textStyle: TextStyle(fontSize: 20),

              ),

              child: Text('Temperature'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoTemperature()),
                );
              },

            ) ,//End of KaroDetails

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color

                primary: Colors.lightGreen[400],
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('Nivo Aciditer'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoAcidity()),
                );
              },

            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Colors.lightGreen[400],
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('Moisture'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoAcidity()),
                );
              },

            )//End of CheckGreenhouse

          ],
        ),



      ),
    );
  }
}


class MoAcidity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body:
      Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: [
                  TableRow( children: [
                    Column(children:[Text('Date', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('pH Level', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('Description', style: TextStyle(fontSize: 20.0))]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 11:00:00')]),
                    Column(children:[Text('6.2')]),
                    Column(children:[Text('Stable')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 12:00:00')]),
                    Column(children:[Text('6.2')]),
                    Column(children:[Text('Stable')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 15:00:00')]),
                    Column(children:[Text('6.1')]),
                    Column(children:[Text('Stable')]),
                  ]),
                ],
              ),
            ),
          ])
      ),
    );
  }
}

class MoTemperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: [
                  TableRow( children: [
                    Column(children:[Text('Date', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('Celsius', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('Description', style: TextStyle(fontSize: 20.0))]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 11:00:00')]),
                    Column(children:[Text('26')]),
                    Column(children:[Text('Normal')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 12:00:00')]),
                    Column(children:[Text('27')]),
                    Column(children:[Text('Normal')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/12/2020 15:00:00')]),
                    Column(children:[Text('34.5')]),
                    Column(children:[Text('Above normal', style: TextStyle(color: Colors.red))]),
                  ]),
                ],
              ),
            ),
          ])
      ),
    );
  }
}


