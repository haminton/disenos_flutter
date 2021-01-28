import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            
          ],
          ),
        ),
      ),
    );
  }

  Widget _crearImagen() {

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  
  }

  Widget _crearTitulo(){

    return SafeArea(
          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lago con un puente', style: estiloTitulo,),
                          SizedBox(height: 7.0,),
                          Text('Este lago en alemania', style: estiloSubtitulo,),
                        ],
                      ),
                    ),

                    Icon(Icons.star, color: Colors.redAccent, size: 30.0,),
                    Text('41', style: TextStyle(fontSize: 20.0),),
                  ],
                ),
              ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0,),
            Text(text, style: TextStyle(color: Colors.blue, fontSize: 15.0),),
          ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Adipisicing fugiat amet esse magna voluptate elit enim sint. Amet culpa magna ullamco aliqua veniam fugiat eu minim velit culpa duis amet nisi eiusmod. Dolore sit ex consectetur exercitation proident laborum magna aliqua officia aute reprehenderit. Excepteur enim dolor officia eu pariatur cillum dolore esse aliqua non adipisicing nulla. Proident tempor et aliqua eu ullamco non aute occaecat quis incididunt qui velit sint. Ex ad consequat aute nisi ut dolore mollit.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}