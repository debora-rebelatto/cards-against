import 'package:cards_against/templates/waitingplayers/waitingplayers.dart';
import 'package:flutter/material.dart';

class JoinPartyPage extends StatefulWidget {
  const JoinPartyPage({ Key key }) : super(key: key);

  @override
  State<JoinPartyPage> createState() => _JoinPartyPageState();
}

class _JoinPartyPageState extends State<JoinPartyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Join Party', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Party Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WaitingPlayersPage()),
                  );
                },
                child: Text('Continue')
              ),
            )
          ],
        )
      )
    );
  }
}