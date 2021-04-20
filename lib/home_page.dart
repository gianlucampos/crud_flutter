import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/table_musica_widget.dart';
import 'core/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud com Flutter '),
      ),
      body: Container(
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
        color: AppColors.background,
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
