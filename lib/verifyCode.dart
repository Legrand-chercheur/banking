import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

class CodeVerification extends StatefulWidget {
  @override
  _CodeVerificationState createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  String selectedCountryCode = '+1'; // Valeur initiale
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 36, 53, 1),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Gérer l'action lorsque le bouton est pressé
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(15, 36, 53, 1), // Couleur du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Rayon des coins du bouton
                      ),
                      side: BorderSide(
                          color: Colors.white,
                          width: 0.3
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0), // Marge du bouton
                    ),
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 19,)
                ),
                Text('Verify Phone', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                Container(
                  width: 30,
                  height: 30,
                )
              ],
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter the code sent to ', style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16
                ),),
                Text('000 000 000 000 ', style: TextStyle(
                    color: Color.fromRGBO(227, 156, 55, 1),
                    fontSize: 16
                ),),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white), // Couleur du texte de saisie
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 40
                      ), // Couleur du texte d'indication
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white), // Couleur du texte de saisie
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 40
                      ), // Couleur du texte d'indication
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white), // Couleur du texte de saisie
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 40
                      ), // Couleur du texte d'indication
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white), // Couleur du texte de saisie
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 40
                      ), // Couleur du texte d'indication
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\'t receive any code? ', style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16
                ),),
                Text('Recend code ', style: TextStyle(
                    color: Color.fromRGBO(227, 156, 55, 1),
                    fontSize: 16,
                ),),
              ],
            ),
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                // Gérer l'action lorsque le bouton est pressé
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(227, 156, 55, 1), // Couleur du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rayon des coins du bouton
                ),
                padding: EdgeInsets.symmetric(vertical: 23.0, horizontal: 145.0), // Marge du bouton
              ),
              child: Text(
                'Continuer',
                style: TextStyle(color: Colors.white), // Couleur du texte du bouton
              ),
            ),

          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getCountryCodes() {
    List<Map<String, dynamic>> codes = [];

    // Ajoutez ici les codes de pays nécessaires
    codes.add({'display': '+1', 'value': '+1', 'flag': 'US'});
    codes.add({'display': '+44', 'value': '+44', 'flag': 'GB'});
    codes.add({'display': '+33', 'value': '+33', 'flag': 'FR'});
    codes.add({'display': '+49', 'value': '+49', 'flag': 'DE'});
    codes.add({'display': '+81', 'value': '+81', 'flag': 'JP'});
    codes.add({'display': '+237', 'value': '+237', 'flag': 'CM'}); // Cameroun
    codes.add({'display': '+235', 'value': '+235', 'flag': 'TD'}); // Tchad
    codes.add({'display': '+236', 'value': '+236', 'flag': 'CF'}); // République centrafricaine
    codes.add({'display': '+242', 'value': '+242', 'flag': 'CG'}); // Congo
    codes.add({'display': '+240', 'value': '+240', 'flag': 'GQ'}); // Guinée équatoriale
    codes.add({'display': '+241', 'value': '+241', 'flag': 'GA'}); // Gabon
    codes.add({'display': '+7', 'value': '+7', 'flag': 'RU'}); // Russie

    // Ajoutez d'autres codes au besoin
    return codes;
  }
}
