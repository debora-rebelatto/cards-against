import 'package:flutter/material.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Regras"),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Regras básicas", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Para iniciar o jogo, cada jogador deve pegar dez cartas brancas."),
                    Text("O jogador que fez cocô por último começa como o Czar das Cartas e pega uma carta preta. Se Hugh Jackman estiver jogando, ele vai primeiro, independente de quem fez cocô por último."),
                    Text("O Czar das Cartas lê em voz alta as perguntas ou frases com lacunas contidas nas cartas pretas. Todos os outros respondem a pergunta ou preenchem os espaços com uma carta branca, virada para baixo, para o Czar das Cartas."),
                    Text("O Czar das Cartas embaralha todas as respostas e lê cada uma das combinações em voz alta para o grupo. O Czar das Cartas deve reler a cara preta antes de apresentar uma resposta. No final, o Czar das Cartas pega a combinação mais engraçada, e quem a submeteu ganha um ponto."),
                    Text("No final do turno, um novo jogador se torna o Czar das Cartas e todos pegam novamente até dez cartas brancas.")


                  ],
                )
              ),

              actions: [
                TextButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
      },
    );
  }
}