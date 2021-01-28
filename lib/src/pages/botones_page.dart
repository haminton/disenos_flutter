import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          ),
        ],
      ),

      //bottomNavigationBar: _buttonNavigation(context),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle , size: 30.0,),
            title: Container()
          ),
        ]
      ),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      )
    );
    
  

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );
  }

  Widget _titulos() {


    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify Transaction', style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 18.0, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget _buttonNavigation(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ), 
      child: BottomNavigationBar(
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle , size: 30.0,),
            title: Container()
          ),
        ]
      ),
    );
  }

  Widget _botonesRedondeados() {

    return Table(
      children: [
        TableRow(
          children: [
            _botonRedondo(Colors.blue, Icons.border_all, 'Genera'),
            _botonRedondo(Colors.purpleAccent, Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
          children: [
            _botonRedondo(Colors.pinkAccent, Icons.shop, 'Buy'),
            _botonRedondo(Colors.orange, Icons.insert_drive_file, 'File')
          ]
        ),
        TableRow(
          children: [
            _botonRedondo(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _botonRedondo(Colors.green, Icons.cloud, 'Grocery')
          ]
        ),
        TableRow(
          children: [
            _botonRedondo(Colors.red, Icons.collections, 'Photos'),
            _botonRedondo(Colors.teal, Icons.help_outline, 'Help')
          ]
        ),
      ],
    );
  }

  Widget _botonRedondo(Color color, IconData icon, String text) {

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.70),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                maxRadius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0,),
              ),
              SizedBox(height: 10.0,),
              Text(text, style: TextStyle(color: color, fontSize: 20.0),)
            ],
          ),
        ),
      ),
    );
  }

}
