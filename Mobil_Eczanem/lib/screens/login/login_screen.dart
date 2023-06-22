import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:page_transition/page_transition.dart';

import '../home/home_screen.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  bool sifre_gozukme = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:
            uThemaColor3, // sarı şeriti kaldırma, Overflow By Pixel Hatası
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: uThemaColor3),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/mobil_eczane_logo.png")),
              Container(
                  child: Text(
                "Hoşgeldiniz",
                style: TextStyle(
                  color: uTextColor,
                  fontSize: 25,
                ),
              )), // hoşgeldiniz
              Container(
                decoration: BoxDecoration(
                  color: uThemaColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 5,
                  bottom: 5,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "TC girin",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.people_alt_outlined,
                          color: Colors.white,
                        )),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ), // tc gir
              Container(
                decoration: BoxDecoration(
                  color: uThemaColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, //alt çizgiyi kaldırma
                              hintText: "Şifrenizi girin",
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.key_outlined,
                                color: Colors.white,
                              )),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    IconButton(
                      onPressed: () {
                        sifre_gozukme = true;
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ) //göz ikonu
                  ],
                ),
              ), // şifre gir
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomeScreen(),
                            type: PageTransitionType.leftToRight));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: uThemaColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ),
              ) //giriş yap
            ],
          ),
        ),
      ),
    );
  }
}
