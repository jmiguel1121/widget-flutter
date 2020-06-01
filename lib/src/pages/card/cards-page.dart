import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardsOne()],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_backup_restore),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cardsOne() {
    return Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Card 1'),
              subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: null, child: Text('calcer')),
                FlatButton(onPressed: null, child: Text('Ok'))
              ],
            )
          ],
        ));
  }

  Widget cardImage() {
    return Column(
      children: <Widget>[
        FadeInImage(
            placeholder: AssetImage('assets/img/img-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gratistodo.com%2Ffondos-otono-wallpapers%2F&psig=AOvVaw2-2JvkAWewez9dpOqBe3ME&ust=1591072959252000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMC9hujm3-kCFQAAAAAdAAAAABAE'))
        //Image(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gratistodo.com%2Ffondos-otono-wallpapers%2F&psig=AOvVaw2-2JvkAWewez9dpOqBe3ME&ust=1591072959252000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMC9hujm3-kCFQAAAAAdAAAAABAE'))
      ],
    );
  }
}
