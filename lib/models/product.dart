

class Product {

  ///// OBJENİN VERİ TİPLERİNİ TANIMLADIK
  int id; 
  int categoryId;
  String productName;
  String quantityPerUnit;
  double unitPrice;
  int unitsInStock;
  ///// OBJELERİ (NESNEleri) kullanılabilir HALİNE GETİRDİK
  Product(this.id,this.categoryId,this.productName,this.quantityPerUnit,this.unitPrice,this.unitsInStock);
  
  ///// jsondan gelen verileri objeye cevirdik setter gibi dusun
  Product.fromJson(Map json){
    id = json["id"];
    categoryId = json["categoryId"];
    productName = json["productName"];
    quantityPerUnit = json["quantityPerUnit"];
    unitPrice = json["unitPrice"];
    unitsInStock = json["unitsInStock"];
  }

  ///// objeden jsona veri gondermek için Map kullandık
  
  
  Map toJson(){
    return {
     ["id"] : id,
     ["categoryId"] : categoryId,
     ["productName"] : productName,
     ["quantityPerUnit"] : quantityPerUnit,
     ["unitPrice"]: unitPrice,
     ["unitsInStock"]: unitsInStock,
    };
  }



}