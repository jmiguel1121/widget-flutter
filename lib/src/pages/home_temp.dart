import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final nums = ['uno', 'dos', 'tres', 'cuatro', 'cinco','seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Temp'),
      ),
      body: ListView(children: _listElementsForm2()),
    );
  }

  List<Widget> _listElements() {
    List<Widget> widgets = new List<Widget>();

    for (String num in nums) {
      final widgetItem = ListTile(
        title: Text(num),
      );
      widgets..add(widgetItem)..add(Divider());
    }
    return widgets;
  }

  List<Widget> _listElementsForm2() {
    return nums.map((item) {
      return Column(children: <Widget>[
        ListTile(
          title: Text(item),
          subtitle: Text('subtitulo'),
          leading: Icon(Icons.add_to_home_screen),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(
          color: Color(5645),
        )
      ]);
    }).toList();
  }
}
