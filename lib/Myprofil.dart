import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 516,
              decoration: BoxDecoration(
                color: Color.fromRGBO(15, 36, 53, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Profile', style: TextStyle(
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
                            icon: Icon(Icons.qr_code_rounded, color: Colors.white70, size: 25,weight: 0.5,),
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
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://i.pinimg.com/736x/35/da/3f/35da3f74621a36575e91ecf4b84e13d7--gorgeous-black-men-human-resources.jpg'),
                            ),
                            width: 100,
                            height: 100,
                        ),
                        SizedBox(width: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mack Cooper', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                            ),),
                            Text('000 000 000 00', style: TextStyle(
                                color: Colors.white38,
                                fontSize: 18
                            ),),
                            Text('mack@example.com', style: TextStyle(
                                color: Colors.white38,
                                fontSize: 18
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width/1.3,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(10, 24, 35, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                    ),
                  ),
                  Container(
                    width: size.width/1.2,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(227, 156, 55, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                    ),
                  ),
                  Container(
                    width: size.width/1.1,
                    height: size.height/4.25,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(30, 56, 53, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Balance', style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 18
                                  ),),
                                  Text('\₽15,901', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                              buildOverlappingCircles(),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/puce.png'))
                                ),
                              ),
                              Row(
                                children: [
                                  Text('....  ....  .... ',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30
                                  ),),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('3765',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildListTile(Icons.person, 'Personal'),
            buildListTile(Icons.shopping_bag, 'Privacy & Security'),
            buildListTile(Icons.help, 'Help'),
            buildListTile(Icons.logout, 'Logout'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Color.fromRGBO(15, 36, 53, 1)),
      title: Text(title, style: TextStyle(color: Color.fromRGBO(15, 36, 53, 1))),
      trailing: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(15, 36, 53, 1)),
      onTap: () {
        // Ajoutez ici la logique pour chaque élément de la liste
      },
    );
  }

  Widget buildOverlappingCircles() {
    return Container(
      width: 50,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: buildCircle(Colors.white.withOpacity(0.5)),
          ),
          Positioned(
            top: 70,
            left: 70,
            child: buildCircle(Colors.white.withOpacity(0.5)),
          ),
          Center(
            child: buildCircle(Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildCircle(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
