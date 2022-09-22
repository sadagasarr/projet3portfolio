import 'package:flutter/material.dart';

import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/ressources/const_global.dart';

//On va créer la nouvelle classe qui va générer le nouvel screem
class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // import dela constante couleur depuis le fichier const_global.dart
      backgroundColor: Color(colorBackground),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBodyDetails(context),
    );
  }

  Widget _buildBodyDetails(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/Saliha.jpg'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Consultant en droit des ntics depuis plus de 20 ans, je suis passionné par la programmation informatique',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'JosefinSans-Regular.ttf',
                    fontSize: 20.0,
                    height: 1.5,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Auparavant j\'ai eu à travailler dans le developpment communautaire où j\'ai été formé à la geston de projet, et à la comunication sociale',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'JosefinSans-Regular.ttf',
                    fontSize: 20.0,
                    height: 1.5,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                child: Text(
                  'Me Contacter',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 40.0,
                    color: Colors.white70,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return contact();
                    },
                  ));
                }),
          ),
        ],
      ),
    ));
  }
}
