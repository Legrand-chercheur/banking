import 'package:flutter/material.dart';


class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
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
              padding: const EdgeInsets.all(25.0),
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
                  Text('Confirm Transfer', style: TextStyle(
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
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/35/da/3f/35da3f74621a36575e91ecf4b84e13d7--gorgeous-black-men-human-resources.jpg'),
              ),
              width: 100,
              height: 100,
            ),
            Text('Dianna Russell', style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            Text('5150-1094-1012', style: TextStyle(
                fontSize: 17,
                color: Colors.white38
            ),),
            Text('Tranfer on Dec 2, 2023', style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(227, 156, 55, 1)
            ),),
            SizedBox(height: 50,),
            Text('\₽150.901', style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,),
            Container(
              width: size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 245, 248, 0.2),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5,),
                  Icon(Icons.warning, size: 18, color: Color.fromRGBO(241, 245, 248, 1),),
                  SizedBox(width: 10,),
                  Container(
                      height: 80,
                      width: size.width/1.3,
                      child: Center(
                        child: Text('Tranfer made to bank account could take a few minutes.',
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: size.width,
              height: 255.3,
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
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Choose Cards', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: size.width/1.1,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: ListTile(
                          leading: Container(
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: Center(
                              child: Container(
                                width: 60,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: NetworkImage('https://techlomedia.in/wp-content/uploads/2016/12/airtel-money.png'),
                                        fit: BoxFit.cover
                                    )
                                )
                              ),
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Airtel Money', style: TextStyle(color: Color.fromRGBO(15, 36, 53, 1))),
                              Text('(241) 076 ... .07', style: TextStyle(color: Colors.black38)),
                            ],
                          ),
                          trailing: Icon(Icons.arrow_drop_down),
                          onTap: () {
                            // Ajoutez ici la logique pour chaque élément de la liste
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
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
                        padding: EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0), // Marge du bouton
                      ),
                      child: Text(
                        'Transfer money',
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
}
