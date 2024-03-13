import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

class MyDropDown extends StatefulWidget {
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
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
                Text('Continue with Phone', style: TextStyle(
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
            SizedBox(height: 30,),
            Text('Enter your phone number to receive a pin code to sign up.', style: TextStyle(
              color: Colors.white70,
              fontSize: 16
            ),),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Container(
                    width: 100,
                    height: 50,
                    child: DropdownButton(
                      focusColor: Colors.white,
                      value: selectedCountryCode,
                      style: TextStyle(
                        color: Colors.white, // Couleur du texte du menu

                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedCountryCode = value!;
                        });
                      },
                      items: _getCountryCodes().map<DropdownMenuItem<String>>((item) {
                        return DropdownMenuItem<String>(
                          value: item['value'],
                          child: Row(
                            children: [
                              Flag.fromString(
                                item['flag'], // Assume que le code du pays est utilisé comme code du drapeau
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                item['display'],
                                style: TextStyle(
                                  color: Colors.white, // Couleur du texte du menu
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white), // Couleur du texte de saisie
                    decoration: InputDecoration(
                      hintText: '000 000 000 000',
                      hintStyle: TextStyle(color: Colors.white70), // Couleur du texte d'indication
                    ),
                  ),
                ),
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
