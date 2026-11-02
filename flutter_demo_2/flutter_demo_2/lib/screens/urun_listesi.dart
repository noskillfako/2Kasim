import 'package:flutter/material.dart';
import 'package:flutter_demo_2/models/kategori.dart';
import 'package:flutter_demo_2/services/IUrunServisi.dart';
import 'package:flutter_demo_2/services/api_servis.dart';

class UrunListesi extends StatefulWidget{
  const UrunListesi({super.key});

  @override
  State<UrunListesi> createState()=>_UrunListesiEkraniState();
}
 class _UrunListesiEkraniState extends State<UrunListesi>{
  late IUrunServisi _urunServisi;
  List<UrunModel> _urunler=[];
  bool _yukleniyor=false;
  String? _hata;


  @override
  void initState(){
    super.initState();
    _urunServisi=CanliApiUrunServisi();
    _urunleriGetir();
  }

  Future<void> _urunleriGetir()async{
    setState((){
      _yukleniyor=true;
      _hata=null;
    });
    try{
      _urunler=await _urunServisi.urunleriGetir();
    }catch(e){
      _hata='Urunler yuklenirken hata olustu: $e';
    }finally{
      setState((){
        _yukleniyor=false;
      });
    }
  }
}
