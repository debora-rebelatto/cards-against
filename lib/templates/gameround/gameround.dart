import 'package:cards_against/controllers/dataController.dart';
import 'package:cards_against/templates/GameCard.dart';
import 'package:cards_against/templates/gameround/infoIcon.dart';
import 'package:flutter/material.dart';

class GameRoundPage extends StatefulWidget {
  const GameRoundPage({ Key key }) : super(key: key);

  @override
  State<GameRoundPage> createState() => _GameRoundPageState();
}

class _GameRoundPageState extends State<GameRoundPage> {
  bool isCzar = true;
  bool ongoingGame = false;
  List<dynamic> _packs = [];

  @override
    void initState() {
      super.initState();
      getData();
    }

  getData() async {
    var data = await DataController.getData();
    setState(() {
      _packs = data;
    });
    print(_packs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(isCzar ? "You are the Czar" : "Player 123 is the Czar"),
        actions: [
          InfoIcon()
        ],
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  ongoingGame = !ongoingGame;
                });
              },
              child: Container(
                color: Colors.black26,
                height: MediaQuery.of(context).size.height * 0.40,
                child: ongoingGame
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: GameCard(isQuestion: true, text: _packs[0]['black'][0]['text'],),
                      ),

                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF262626),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Ganhador da rodada: Player 123',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ],
                  )
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onDoubleTap: () {
                          setState(() {
                            isCzar = !isCzar;
                          });
                        },
                        child: isCzar
                          ? Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Hidden Card",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45
                                ),
                              ),
                            ),
                          )
                          : GameCard(isQuestion: false, text: _packs[0]['white'][index]['text']),
                      )
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}