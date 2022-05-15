import 'package:flutter/material.dart';

class PacksList extends StatefulWidget {
  const PacksList({ Key key }) : super(key: key);

  @override
  State<PacksList> createState() => _PacksListState();
}

class _PacksListState extends State<PacksList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView.builder(
      //     itemCount: _packs.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return Card(
      //         child: ListTile(
      //           title: Text(_packs[index]['name']),
      //           onTap: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => CardsPage(_packs[index]),
      //               ),
      //             );
      //           },
      //         ),
      //       );

      //     }
      //   )
    );
  }
}