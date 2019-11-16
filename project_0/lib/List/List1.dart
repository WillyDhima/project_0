import 'package:flutter/material.dart';
import 'package:project_0/List/listAnak0.dart';
import 'package:project_0/List/listAnak1.dart';
import 'package:project_0/List/listAnak2.dart';

class ListMateri extends StatelessWidget {
  var materi = [
    "Part of Speech",
    "Modals",
    "Causative Verbs",
    "Clauses",
    "Pharses",
    "Verbal",
    "Conditional Sentence",
    "Direct Indirect Speech",
    "Tenses",
    "Passive Voice",
    "Question Tag"
  ];

  @override
  Widget listViewWidget() {
    return Container(
      child: ListView.builder(
        itemCount: materi.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 120.0,
              width: 120.0,
              child: Center(
                child: ListTile(
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(materi[index]),
                  ),
                  onTap: () {
                    if(materi[index] == "Part of Speech"){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Anak0()));
                    }else if(materi[index] == "Modals"){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Anak1()));
                    }else{
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Anak0()));
                    }
                  },
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
          title: Center(child: Text('16 Tenses')),
        ),
        body: Center(
          child: listViewWidget(),
        ),
      ),
    );
  }
}
