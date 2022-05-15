
import 'package:cards_against/templates/homepage/cardHomePage.dart';
import 'package:cards_against/templates/joinParty/joinParty.dart';
import 'package:flutter/material.dart';
import 'package:cards_against/controllers/dataController.dart';
import 'package:cards_against/templates/createParty/createParty.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _packs = [];

  @override
  initState() {
    super.initState();
    getData();
  }

  getData() async {
    var data = await DataController.getData();
    setState(() {
      _packs = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CardHomePage(),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("A party game for horrible people", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JoinPartyPage()),
                        );
                      },
                      child: Text("Join Party")
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
                    ),
                    child: Text("Create Game"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePartyPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
