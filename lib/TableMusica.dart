import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TableMusica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Músicas'),
        backgroundColor: Colors.blue,
      ),
      body: TableBody(),
    );
  }
}

class TableBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
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
          DataColumn(
              label: Text(
            'Ações',
            textScaleFactor: 1.2,
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('All the small things')),
            DataCell(Text('The Enema of State')),
            DataCell(Text('Blink-182')),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesome5Solid.edit,
                    ),
                    tooltip: 'Editar',
                    hoverColor: Colors.transparent,
                    color: Colors.green,
                    iconSize: 20,
                    onPressed: () {
                      print('Editando');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome5Solid.trash,
                    ),
                    tooltip: 'Remover',
                    hoverColor: Colors.transparent,
                    color: Colors.red,
                    iconSize: 20,
                    onPressed: () {
                      print('Editando');
                    },
                  ),
                ],
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Dani California')),
            DataCell(Text('Stadium Arcadium')),
            DataCell(Text('Red Hot Chili Peppers')),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesome5Solid.edit,
                    ),
                    tooltip: 'Editar',
                    hoverColor: Colors.transparent,
                    color: Colors.green,
                    iconSize: 20,
                    onPressed: () {
                      print('Editando');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome5Solid.trash,
                    ),
                    tooltip: 'Remover',
                    hoverColor: Colors.transparent,
                    color: Colors.red,
                    iconSize: 20,
                    onPressed: () {
                      print('Editando');
                    },
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
