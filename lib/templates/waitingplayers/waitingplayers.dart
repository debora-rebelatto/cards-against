import 'package:cards_against/templates/gameround/gameround.dart';
import 'package:flutter/material.dart';

class WaitingPlayersPage extends StatefulWidget {
  const WaitingPlayersPage({ Key key }) : super(key: key);

  @override
  State<WaitingPlayersPage> createState() => _WaitingPlayersPageState();
}

class _WaitingPlayersPageState extends State<WaitingPlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Players Joined', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text('1. Player 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('2. Player 2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('3. Player 3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('4. Player 4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameRoundPage()),
                    );
                  },

                  child: Text('Start Game'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}