import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChoiceTransaction.dart';
import 'Myprofil.dart';
import 'ScanPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Principal(),
          Container(),
          Container(),
          Profil(),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPage()));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Icon(Icons.qr_code),
          backgroundColor: Color.fromRGBO(227, 156, 55, 1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class CustomBottomAppBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  CustomBottomAppBar({required this.currentIndex, required this.onTabTapped});

  final List<Map<IconData, IconData>> iconsList = [
    {Icons.home: Icons.home_outlined},
    {Icons.analytics: Icons.analytics_outlined},
    {Icons.currency_bitcoin: Icons.currency_bitcoin_sharp},
    {Icons.person: Icons.person_outline_rounded},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < iconsList.length; i++)
              buildIconButton(iconsList[i], i),
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton(Map<IconData, IconData> icons, int index) {
    final selectedIcon = currentIndex == index ? icons.keys.first : icons.values.first;

    return IconButton(
      icon: Icon(
        selectedIcon,
        color: currentIndex == index ? Color.fromRGBO(15, 36, 53, 1) : Colors.black,
      ),
      onPressed: () => onTabTapped(index),
    );
  }
}



class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                        fit: BoxFit.contain
                    )
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black26,
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.settings_outlined, color: Colors.black, size: 25,weight: 0.5,),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                          ),
                        ),
                      ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello Mack', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Your available balance', style: TextStyle(
                      fontSize: 18,
                      color: Colors.black12
                    ),),
                  ],
                ),
                Text('\₽15,901', style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 36, 53, 1),
              borderRadius: BorderRadius.circular(18),

            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoiceTransfere()));
                          },
                          icon: Icon(Icons.compare_arrows_rounded,color: Colors.white,)
                      ),
                      Text('Transfer', style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1.5,
                    color: Colors.white10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag_sharp, color: Colors.white,)),
                      Text('Top Up', style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1.5,
                    color: Colors.white10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed:(){}, icon: Icon(Icons.history, color: Colors.white,)),
                      Text('History', style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Payement List',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 245, 248, 1),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.electric_bolt, color: Colors.yellow, size: 25,weight: 0.5,),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Electricity')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 245, 248, 1),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.wifi, color: Colors.redAccent, size: 25,weight: 0.5,),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Internet')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 245, 248, 1),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.smartphone_rounded, color: Colors.blueAccent, size: 25,weight: 0.5,),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Mobile Credit')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 245, 248, 1),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_vert_rounded, color: Colors.lightGreen, size: 25,weight: 0.5,),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15), // Ajustez le rayon selon vos besoins
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('More')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
