import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sant_piipaa/screen/helper/DataController.dart';
import 'package:share_extend/share_extend.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('Sunt Piipaa', style: TextStyle(color: Colors.white)),
      ),
      body: Consumer<ApiService>(
        builder: (context, apiService, child) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: apiService.Data.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange,
                      blurRadius: 15,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'संत पीपा के दोहे',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${apiService.Data[index].Sanskrit}',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        maxLines: 4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'अर्थ',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        apiService.translatedTexts[index],
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        maxLines: 4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Uri url = Uri.parse('https://www.whatsapp.com/');
                            launcher.launchUrl(url);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/image/whatsapp.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: IconButton(
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: '${apiService.Data[index].Sanskrit}'),
                              );
                            },
                            icon: Icon(Icons.copy),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: IconButton(
                            onPressed: () {
                              ShareExtend.share('${apiService.Data[index].Sanskrit}', 'text');
                            },
                            icon: Icon(Icons.share),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Center(child: Text('Translator')),
                                actions: [
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Provider.of<ApiService>(context, listen: false).translateText(
                                          '${apiService.Data[index].English}',
                                          'en',
                                          index,
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Text('English',style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Provider.of<ApiService>(context, listen: false).translateText(
                                          '${apiService.Data[index].Hindi}',
                                          'hi',
                                          index,
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Text('Hindi',style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Provider.of<ApiService>(context, listen: false).translateText(
                                          '${apiService.Data[index].Gujarati}',
                                          'gu',
                                          index,
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Text('Gujarati',style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Provider.of<ApiService>(context, listen: false).translateText(
                                          '${apiService.Data[index].Sanskrit}',
                                          'sa',
                                          index,
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Text('Sanskrit',style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Icon(CupertinoIcons.list_bullet_indent),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
