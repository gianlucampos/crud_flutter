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
        color: Colors.green,
        padding: EdgeInsets.all(50),
        width: double.infinity,
        child: Column(
          children: [
            Flexible(
                child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width * 0.60,
              child: TableMusica(),
            )),
          ],
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
