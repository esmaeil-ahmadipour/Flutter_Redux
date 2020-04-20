import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterredux/drawer_menu.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutterredux/models/app_state.dart';

const kAppTitle = 'States by Redux';
const kStateType = '...';

class Home extends StatelessWidget {
  String text = lorem(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StoreConnector<AppState , AppState>(
          converter: (store) => store.state,
          builder: (context , state){
            return SingleChildScrollView(
              child: RichText(
                text: TextSpan(
                  text: text,
                  style: TextStyle(fontSize: state.viewFontSize, color: Colors.black,
                    fontWeight: state.bold ? FontWeight.bold : FontWeight.normal,
                    fontStyle: state.italic ? FontStyle.italic : FontStyle.normal,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
