import 'package:flutter/material.dart';
import 'package:menu_app/main.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Жаңы баракча'),
      ),
      body: Center(
        child: Text(
          'Мурунку сан: $count',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
    );
  }
}
