import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/resources/menu.dart';
import 'package:widgets_flutter/src/utils/icon-utils.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return FutureBuilder(
      future: menu.cargarMenu(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  /*
   * crear los items del listado del menu 
   */
  List<Widget> _listItems(List<dynamic> items, BuildContext context) {
    List<Widget> widgets = new List<Widget>();
    items.forEach((el) {
      var item = ListTile(
        title: Text(el['texto']),
        leading: getIcon(el['icon']),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.orangeAccent,
        ),
        onTap: () {
          Navigator.pushNamed(context, el['ruta']);
          //Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage()));
        },
      );
      widgets..add(item)..add(Divider());
    });

    return widgets;
  }
}
