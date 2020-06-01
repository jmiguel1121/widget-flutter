import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'dart:convert';

import 'package:widgets_flutter/src/pages/alert/alert-page.dart';
import 'package:widgets_flutter/src/pages/avatar/avatar-page.dart';
import 'package:widgets_flutter/src/pages/card/cards-page.dart';
import 'package:widgets_flutter/src/pages/home.dart';

class _Menu {
  List<dynamic> listData = [];

  _Menu() {}

  Future<List<dynamic>> cargarMenu() async {
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map mapMenu = json.decode(data);
    return mapMenu['rutas'];
  }

  Map routes() {
    return <String, WidgetBuilder>{
      'home': (BuildContext context) => Home(),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
    };
  }
}

final menu = new _Menu();
