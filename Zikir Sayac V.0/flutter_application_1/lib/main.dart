import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

void main() {
  runApp(MyAppSayac());
}

class MyAppSayac extends StatelessWidget {
  const MyAppSayac({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kul Points', style: TextStylerim.stylemap),
          backgroundColor: Colors.redAccent,
        ),
        body: SayacWidgetim(),
      ),
    );
  }
}

class SayacWidgetim extends StatefulWidget {
  const SayacWidgetim({super.key});

  @override
  State<SayacWidgetim> createState() => _SayacWidgetimState();
}

class _SayacWidgetimState extends State<SayacWidgetim> {
  @override
  final String KulText = "Kulumu Say";
  int sayac = 0;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            KulText.toUpperCase(),
            style: TextStylerim.stylekul,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 40),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Text(
              sayac.toString(),
              style: TextStylerim.stylekul,
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20)),
          ),
          ElevatedButton(
            onPressed: () {
              sayacim();
            },
            child: Icon(
              Icons.plumbing,
              color: Colors.redAccent,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

// sayaç fonksiyonum :)
  void sayacim() {
    setState(() {
      sayac++;
    });
  }
  // sayaç fonksiyonum :)
}




/// Merhaba Arkadaşlar Hoş Geldiniz bugün sizlere Küçük çaplı yaptığım App göstereceğim
/// Zikir Sayac V-0 versiyonu :) 