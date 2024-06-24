<h2 align = "center"> 1. Sant PiiPaa App </h2>



Certainly! The `translator` package in Flutter provides a simple way to translate text strings within your app. Here's an example of how you can use the `translator` package in Flutter:

1. Add the `translator` package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  translator: ^1.0.0
```

2. Import the necessary libraries in your Dart file:

```dart
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
```

3. Create a function to handle text translation:

```dart
Future<String> translateText(String text, {String toLanguage = 'en'}) async {
  // Create an instance of GoogleTranslator
  GoogleTranslator translator = GoogleTranslator();

  // Translate the text to the specified language
  Translation translation = await translator.translate(text, to: toLanguage);

  // Return the translated text
  return translation.text;
}
```

4. Use the `translateText` function in your app's UI:

```dart
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String originalText = 'Hello, World!';
  String translatedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translator Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Original Text: $originalText'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Translate the original text to French
                String translated = await translateText(originalText, toLanguage: 'fr');
                setState(() {
                  translatedText = translated;
                });
              },
              child: Text('Translate to French'),
            ),
            SizedBox(height: 20),
            Text('Translated Text: $translatedText'),
          ],
        ),
      ),
    );
  }
}
```

In this example, we have a simple Flutter app with a button that triggers the translation of the text "Hello, World!" from English to French using the `translator` package. The translated text is then displayed below the button. You can modify the `translateText` function to handle translations to other languages or customize it as needed for your app.







<img src = "https://github.com/fenishpatel3150/sant_piipaa/assets/143187609/780ed3d1-7e1c-482a-97ed-d19704e45686" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/sant_piipaa/assets/143187609/8d1059ec-1d8a-406d-829b-af1db0592e8c" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/sant_piipaa/assets/143187609/eb3fe124-93a5-4257-b0e6-46274fbd9632" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/sant_piipaa/assets/143187609/9929a970-5811-4bd0-8653-3e192a7858cb" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/sant_piipaa/assets/143187609/336c6394-90a2-4364-9457-61a12616a28b" width=22% height=35%>




https://github.com/fenishpatel3150/regular_task/assets/143187609/c72c24f8-67c4-4523-a5a0-2c8784212501
