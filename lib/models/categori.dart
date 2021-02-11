
class Category{
  int id;
  String categoryName;
  String seoUrl;

  Category(this.id,this.categoryName,this.seoUrl); /// objee haline getirdik !!!
   
   //// jsondan gelen verileri kategori nesnesine cevircez constucto ile yapılcak !!!!
   
   Category.fromJson(Map json){ /////jsondan gelen veri Map formatındadır !!!!!!
     id = json["id"];  //// jsondaki id yi id objesine ata
     categoryName = json["categoryName"];
     seoUrl = json["seoUrl"];
   }

   ///// Category objesini json a gonderirken Map den jsona gondeririz !!!!!
   
    Map tojson(){
     return {
      "id": id,
      "categoryName": categoryName,
      "seoUrl": seoUrl,
     };
   }
  
   

}