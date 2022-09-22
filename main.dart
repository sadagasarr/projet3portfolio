import 'package:flutter/material.dart';
import 'package:portfolio/screens/portfolio.dart';

void main() {
  runApp(MyApp());
}

// Je crée mon statelesswidget on peut utliser le raccouci taper st
class MyApp extends StatelessWidget {
  /* extends signifie que la class MyApp va hériter de toutes les foncctions de 
  de la classe SatelessWidget et c'est pour cela qu'on peut accéder au widget
  build*/

  @override
  /*override est un mot clé qui indique au compilateur qu'on va écrire le build
  de classe */
  // On rajoute le widget build qui est un widget de stateclasswidget
  Widget build(BuildContext context) {
    /* le widget build qui définit l'architecture de l'app retourne toujours 
      qqchose et le squelette de notre application*/
    return MaterialApp(
      title: ' Mon Portfolio',
      //on l'envoie sur notre première page home
      home: portfolio(),
      // portfolio est une classe qu'on va créer plus tard
      /* NB notre application va faire 2 screen d ou on va dans dossier screen
      et dans celui on crée deux fichiers : un fichier*/
    );
  }
}
