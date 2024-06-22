import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sant_piipaa/screen/controller/DataController.dart';
import 'package:sant_piipaa/screen/view/second/componets/Dohe.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text('Sunt Piipaa',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange,
                      blurRadius: 15
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Doha(),
              ),
            ),
          )
        ],
      ),
    );
  }


}
