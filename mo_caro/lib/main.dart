import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mo_caro/calendar.dart';
import 'timeline.dart';

final _formKey = GlobalKey<FormState>();

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
        title: Text("Details lor Mo'Karo"),
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

class CheckOuCaro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Ou Caro"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 300,
            child: Center(child: MyCalendar(),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            height: 60,
            color: Colors.green[200],
            child: const Center(child: Text('Check Ou Progré', style: TextStyle(fontSize: 20))),
          ),
          Container(
            height: 1400,
            child: Center(child: TimelinePage(),),
          ),
        ],
      )

      );
  }
}

class MyForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ecrir Ou Nom',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ecrir 1 Zafr';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ecrir 1 Numero Contact',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ecrir 1 Zafr';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ecrir 1 ti Laddress',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ecrir 1 Zafr';
              }
              return null;
            },
          ),

          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ki ou p VenD',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Ecrir 1 Zafr';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class TableCus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center( child: new SingleChildScrollView( //Used for scrollable events
          child: new Column(
              children: <Widget>[

                //Table Additional
                Column(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("\n"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Table(
//Nom , Contact, Address, Ki p vender

                          children: [
                            TableRow(
                                children: [
                                  Text("Nom" , style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
                                  Text("Contact", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                  Text("Adress", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                  Text("Ki pe vender", style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Namita Sham\n" ,style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("4563278",textScaleFactor: 1.5),
                                  Text("Route Royal, Bras d'eau\n ",textScaleFactor: 1.5),
                                  Text("Pomme de terre blanc",textScaleFactor: 1.5),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text("Ayush Bojo\n",style: TextStyle(fontStyle: FontStyle.italic),textScaleFactor: 1.5),
                                  Text("57452398",textScaleFactor: 1.5),
                                  Text("Chemin vingt pieds, Riviere du rempart\n",textScaleFactor: 1.5),
                                  Text("Lalo ",textScaleFactor: 1.5),
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

class VendOuRecolte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vend Ou Recoltes"),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              height: 60,
              color: Colors.green[200],
              child: const Center(child: Text('Ajoute Ou Produit', style: TextStyle(fontSize: 20))),
            ),
            Container(
              height: 400,
              child: Center(child: MyForm(),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              height: 60,
              color: Colors.green[200],
              child: const Center(child: Text('Check Banne Produit La', style: TextStyle(fontSize: 20))),
            ),
            Container(
              height: 400,
              child: Center(child: TableCus(),),
            ),
          ],
        )
    );
  }
}

//Calendar

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.green[400]),

      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child:Container(
          color: Colors.green[100],
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.network('https://researchleap.com/wp-content/uploads/2019/11/image_2019-11-14_13-57-27-e1573726312760-1280x720.jpg'),
              decoration: BoxDecoration(
                color: Colors.green[50],
              ),
            ),
            ListTile(
              title: Text(' Anou Planter'),
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
              title: Text('Vend Ou Recoltes'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => VendOuRecolte()),
                );
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}