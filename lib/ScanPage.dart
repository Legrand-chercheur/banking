import 'package:flutter/material.dart';


class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
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
                  Text('Scan to Pay', style: TextStyle(
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
                      icon: Icon(Icons.help_outline_rounded, color: Colors.white70, size: 25,weight: 0.5,),
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/scan.png'),
                    fit: BoxFit.cover
                )
              ),
            ),
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
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payement with QR Code', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('Hold the code insidethe frame, il will be scanned automatically', style: TextStyle(
                            fontSize: 17,
                            color: Colors.black12
                        ),),
                      ],
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
