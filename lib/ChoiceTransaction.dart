import 'package:flutter/material.dart';

import 'Transfer.dart';


class ChoiceTransfere extends StatefulWidget {
  const ChoiceTransfere({super.key});

  @override
  State<ChoiceTransfere> createState() => _ChoiceTransfereState();
}

class _ChoiceTransfereState extends State<ChoiceTransfere> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 24, 35, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(15, 36, 53, 1),
                        border: Border.all(
                            color: Colors.white12,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white70, size: 25,weight: 0.5,),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text('Select Destination', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                  Container(
                    width: 60,
                    height: 60,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Where are you transfer to?', style: TextStyle(
                    fontSize: 17,
                    color: Colors.white70
                ),),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              height: size.height/1.34,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 80,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_balance_rounded, color: Color.fromRGBO(227, 156, 55, 1),),
                      title: Text('Bank', style: TextStyle(color: Color.fromRGBO(15, 36, 53, 1))),
                      trailing: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(15, 36, 53, 1)),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bank()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/logo.png'),
                                fit: BoxFit.contain
                            )
                        ),
                      ),
                      title: Text('Wally', style: TextStyle(color: Color.fromRGBO(15, 36, 53, 1))),
                      trailing: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(15, 36, 53, 1)),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Wally()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  String selectedCountryCode = 'Select bank';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 24, 35, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(15, 36, 53, 1),
                        border: Border.all(
                            color: Colors.white12,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white70, size: 25,weight: 0.5,),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text('Transfer with Bank', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                  Container(
                    width: 60,
                    height: 60,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              height: size.height/1.23,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 80,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Bank Account', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 60,
                      child: DropdownButton(
                        focusColor: Colors.white,
                        value: selectedCountryCode,
                        style: TextStyle(
                          color: Colors.black, // Couleur du texte du menu

                        ),
                        onChanged: (value) {
                          setState(() {
                            selectedCountryCode = value!;
                          });
                        },
                        items: _getCountryCodes().map<DropdownMenuItem<String>>((item) {
                          return DropdownMenuItem<String>(
                            value: item['value'],
                            child: Text(
                              item['display'],
                              style: TextStyle(
                                color: Colors.black38, // Couleur du texte du menu
                                fontSize: 16
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black38), // Couleur du texte de saisie
                      decoration: InputDecoration(
                        hintText: 'Account number',
                        hintStyle: TextStyle(color: Colors.black38), // Couleur du texte d'indication
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Set amount', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('How much do you like to transfer?', style: TextStyle(
                          fontSize: 17,
                          color: Colors.black38
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black38), // Couleur du texte de saisie
                      decoration: InputDecoration(
                        hintText: '\₽150.901',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30
                        ), // Couleur du texte d'indication
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽100.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽250.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽500.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height/8,
                  ),
                  Center(
                    child: ElevatedButton(
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
                  ),
                ],
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
    codes.add({'display': 'Select bank', 'value': 'Select bank', 'flag': 'US'});
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


class Wally extends StatefulWidget {
  const Wally({super.key});

  @override
  State<Wally> createState() => _WallyState();
}

class _WallyState extends State<Wally> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 24, 35, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(15, 36, 53, 1),
                        border: Border.all(
                            color: Colors.white12,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white70, size: 25,weight: 0.5,),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text('Transfer with Wally', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(15, 36, 53, 1),
                        border: Border.all(
                            color: Colors.white12,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.search, color: Colors.white70, size: 25,weight: 0.5,),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height/1.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 80,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Contact', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.black38), // Couleur du texte de saisie
                            decoration: InputDecoration(
                              hintText: 'Enter phone number',
                              hintStyle: TextStyle(color: Colors.black38), // Couleur du texte d'indication
                            ),
                          ),
                          width: 280,
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(15, 36, 53, 1),
                                border: Border.all(
                                    color: Colors.white12,
                                    width: 0.5
                                ),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.add, color: Colors.white70, size: 25,weight: 0.5,),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Set amount', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                        TextButton(
                            onPressed: (){}, 
                            child: Text('See all contact', style: TextStyle(
                              color: Color.fromRGBO(227, 156, 55, 1),
                            ),))
                      ],
                    ),
                  ),
                  buildListTile('https://i.pinimg.com/736x/35/da/3f/35da3f74621a36575e91ecf4b84e13d7--gorgeous-black-men-human-resources.jpg', 'Dianna Russell', '(490) 000 000'),
                  buildListTile('https://i.pinimg.com/736x/35/da/3f/35da3f74621a36575e91ecf4b84e13d7--gorgeous-black-men-human-resources.jpg', 'Cody Banks', '(241) 000 00 00 00'),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('How much do you like to transfer?', style: TextStyle(
                          fontSize: 17,
                          color: Colors.black38
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 20, right: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black38), // Couleur du texte de saisie
                      decoration: InputDecoration(
                        hintText: '\₽150.901',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30
                        ), // Couleur du texte d'indication
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽100.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽250.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('\₽500.00', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(10, 24, 35, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height/20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Transfer()));
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String profil, String title, String subtitle) {
    return ListTile(
      leading: Container(
        child: CircleAvatar(
          backgroundImage: NetworkImage(profil),
        ),
        width: 50,
        height: 50,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Color.fromRGBO(15, 36, 53, 1))),
          Text(subtitle, style: TextStyle(color: Colors.black38)),
        ],
      ),
      onTap: () {
        // Ajoutez ici la logique pour chaque élément de la liste
      },
    );
  }
}


