import 'package:flutter/material.dart';

class Anak1 extends StatelessWidget {

var materiAnak = [
  "Can/Could/Be Able To",
  "Must/Have To",
  "May/Might",
  "Should",
  "Used To",
  "Be Used To",
  "Had Better"
];

  @override
  Widget listViewWidget(){
    return Container(
      child: ListView.builder(
        itemCount: materiAnak.length,
        itemBuilder: (context, index){
          return Card(
            child: Container(
              height: 120.0,
              width: 120.0,
              child: Center(
                child: ListTile(
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(materiAnak[index]),
                  ),
                  //onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>  Anak0()));
                  //},
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Center(
          child: Text('Part of Speech')
        ),
      ),
        body: Center(
          child: listViewWidget(),
        ),
      ),
    );
  }
}