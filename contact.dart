import 'package:flutter/material.dart';
import 'package:portfolio/ressources/const_global.dart';
import 'package:portfolio/screens/portfolio.dart';

class contact extends StatelessWidget {
  // On retourne sur le fichier main/dart pour y importer le fichier portfolio.dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // import dela constante couleur depuis le fichier const_global.dart
      backgroundColor: Color(colorBackground),
      appBar: AppBar(
        title: Text('Mes coordonnées'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBodycontact(context),
    );
  }

  Widget _buildBodycontact(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/Saliha.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 45,
                  ),
                  Text(
                    email,
                    style: Style_email,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 45,
                  ),
                  Text(telephone, style: Styletelephone),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    child: Text(
                      ' Retour',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 40.0,
                        color: Colors.white70,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return portfolio();
                        },
                      ));
                    }),
              ),
            ]),
      ),
    );
  }
}
