import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        margin: EdgeInsets.only(top: 50),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
          child: DataTable(
            dividerThickness: 2,
            columns: [
              DataColumn(
                  label: Text(
                '#',
                textScaleFactor: 1.2,
              )),
              DataColumn(
                  label: Text(
                'Música',
                textScaleFactor: 1.2,
              )),
              DataColumn(
                  label: Text(
                'Album',
                textScaleFactor: 1.2,
              )),
              DataColumn(
                  label: Text(
                'Artista',
                textScaleFactor: 1.2,
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('All the small things')),
                DataCell(Text('The Enema of State')),
                DataCell(Text('Blink-182')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Dani California')),
                DataCell(Text('Stadium Arcadium')),
                DataCell(Text('Red Hot Chili Peppers')),
              ]),
            ],
          ),
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
