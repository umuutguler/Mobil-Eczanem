import 'dart:async';
import 'package:mobil_eczanem/components/navbar.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class Barcode extends StatefulWidget {
  @override
  _BarcodeState createState() => _BarcodeState();
}

class _BarcodeState extends State<Barcode> {
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: uBackgroundColor,
          colorScheme: ColorScheme.light().copyWith(primary: uThemaColor),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: uTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Barcode scan'),
              backgroundColor: uThemaColor,
              leading: BackButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: HomeScreen(),
                          type: PageTransitionType.leftToRight));
                },
              ),
            ),
            bottomNavigationBar: Navbar(home: 0, bar: 1, bas: 0),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(direction: Axis.vertical, children: <Widget>[
                    Padding(padding: EdgeInsets.all(130.0)),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(uThemaColor),
                        ),
                        onPressed: () => scanBarcodeNormal(),
                        child: Text('Barkodu Okut')),
                    Padding(padding: EdgeInsets.all(8.0)),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(uThemaColor)),
                        onPressed: () => scanQR(),
                        child: Text('QR Kodu Okut')),
                    Padding(padding: EdgeInsets.all(8.0)),
                    Text('Kod Durumu : $_scanBarcode\n',
                        style: TextStyle(fontSize: 20)),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 439.0 - 249.0)),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(uThemaColor)),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    _AlertDialogShow(context),
                              );
                            },
                            child: Text('Eczaneye Gönder')),
                      ],
                    ),
                  ]));
            })));
  }

  Widget _AlertDialogShow(BuildContext context) {
    return AlertDialog(
      title: new Text(""),
      content: new Text(
        "Eczaneye Gönderildi",
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: uTextColor, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        new TextButton(
          child: new Text("Tamam"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
