import 'package:cards_against/templates/waitingplayers/waitingplayers.dart';
import 'package:flutter/material.dart';

class CreatePartyPage extends StatefulWidget {
  const CreatePartyPage({ Key key }) : super(key: key);

  @override
  State<CreatePartyPage> createState() => _CreatePartyPageState();
}

class _CreatePartyPageState extends State<CreatePartyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create Party', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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