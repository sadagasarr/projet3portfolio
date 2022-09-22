import 'package:flutter/material.dart';

import 'package:portfolio/screens/details.dart';

import '../ressources/const_global.dart';

class portfolio extends StatelessWidget {
  // On retourne sur le fichier main/dart pour y importer le fichier portfolio.dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // import dela constante couleur depuis le fichier const_global.dart
      backgroundColor: Color(colorBackground),
      appBar: AppBar(
        title: Text('Mon Portfolio'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: ListView(shrinkWrap: true, // Pour center le contenu de listview
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/Saliha.jpg'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 30.0, bottom: 15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    nomPortfolio,
                    style: StylenomPortfolio,
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 30.0, bottom: 15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    presentationPortfolio,
                    style: StylepresentationPortfolio,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    child: Text(
                      textButtonPortolio,
                      style: StyletextButtonPortolio,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Details();
                        },
                      ));
                    }),
              ),
            ]),
      ),
    );
  }
}
