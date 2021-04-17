import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapp/TableMusica.dart';

import 'constants/Colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud com Flutter '),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(50),
        child: FractionallySizedBox(
          heightFactor: 0.8,
          widthFactor: 0.65,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black,width: 1)
              ),
              child: TableMusica()),
        ),
      ),
      bottomNavigationBar: Container(
        color: BACKGROUND,
        height: 65,
        child: Center(
          child: Text(
            'Não tenho ideia do que colocar aqui!',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
