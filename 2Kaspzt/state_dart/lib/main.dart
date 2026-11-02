import 'package:flutter/material.dart';
import 'dart:async';
import 'package:go_router/go_router.dart';
import 'widgets/anakasa.dart';
import 'widgets/vitrinekran.dart';
import 'widgets/profilekrani.dart';
import 'controllers/GoRouter.dart';

void main(){
  runApp(const Uygulama());
}

class Uygulama extends StatelessWidget{
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
    debugShowCheckedModeBanner:false,
    routerConfig:uygulamaRotalari,
    );

  }
}
