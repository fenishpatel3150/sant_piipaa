import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sant_piipaa/screen/controller/DataController.dart';
import 'package:sant_piipaa/screen/model/datamodel.dart';
import 'package:url_launcher/url_launcher.dart'as launcher;



class Doha extends StatelessWidget {
  const Doha({super.key});

  @override
  Widget build(BuildContext context) {
      DataController dataController =Provider.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('संत पीपा के दोहे',style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
        Expanded(child: Text('',style: TextStyle(color: Colors.black,fontSize: 20),maxLines: 3,textAlign: TextAlign.center,)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('અર્થ',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Expanded(child: Text('उठ भाग्यो वाराणसी, न्हायो गंग हजार।पीपा वे जन उत्तम घणा, जिण राम कयो इकबार॥ ',style: TextStyle(color: Colors.black,fontSize: 20),maxLines: 3,textAlign: TextAlign.center,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: ()
              {
                Uri url = Uri.parse('https://www.whatsapp.com/');
                launcher.launchUrl(url);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/whatsapp.png'))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
            InkWell(
              onTap: ()
              {

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.share),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.messenger_outline),
            ),

          ],
        )
      ],
    );
  }
}
