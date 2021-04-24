import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:webapp/core/app_colors.dart';

class TableMusica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: Text('Músicas'),
            backgroundColor: AppColors.blue,
            actions: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesome5Solid.plus_circle,
                  color: AppColors.gray,
                ),
                label: Text(
                  "Adicionar Música",
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          TableBody(),
          TablePagination(),
        ]);
  }
}

class TableBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      dividerThickness: 2,
      headingRowHeight: 40,
      dataRowHeight: 58,
      decoration: BoxDecoration(color: Colors.white),
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
    );
  }
}

class TablePagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '5 de 25 resultados',
              textScaleFactor: 1.2,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 35,
                    color: Colors.white70,
                    child: TextButton(
                      onPressed: () {},
                      child: MediaQuery.of(context).size.width > 960
                          ? Text('Anterior')
                          : Text('<'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    if (MediaQuery.of(context).size.width > 960) {
                      return Row(
                        children: List.generate(
                            5,
                            (index) => Row(children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 35,
                                    width: 35,
                                    color: Colors.white70,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text((index + 1).toString())),
                                  ),
                                  SizedBox(width: 10),
                                ])),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: 35,
                      color: Colors.white70,
                      child: TextButton(
                        child: MediaQuery.of(context).size.width > 960
                            ? Text('Próximo')
                            : Text('>'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
