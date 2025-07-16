



class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}



List listt = datalist.map((e)=>Model(e["image"], e["text"])).toList();

var datalist = [

  {" image": " Assets/kodi.jpg","title":" Friends"},
  {" image": " Assets/mmm.jpg","title":" Memorial"},
  {" image": " Assets/wel.jpg","title":" my"},
  {" image": " Assets/filpkart.jpg","title":" hare"},
];
