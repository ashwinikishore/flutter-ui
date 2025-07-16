import 'package:flutter/material.dart';


class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}



List listt = datalist.map((e)=>Model(e["image"], e["text"])).toList();

var datalist = [

  {" image" :" Assets/wel.jpg"," text" : "ring" },
  {" image" :" Assets/wel.jpg"," text" : " black" },
  {" title" :" Assets/wel.jpg","text" : " silver" },
  {" title": " Assets/wel.jpg","text":   "gold"} ,

];