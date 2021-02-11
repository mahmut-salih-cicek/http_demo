
import 'package:http/http.dart' as http;
/////// resful apiye nasıl baglancagımazı data cekmeyi yapıcaz !!!!



class ProductApi {
  /////http://localhost:3000/products bu yapiya ulasıyoruz 
  ////tum urunleri listelicek bir getter yazdık 
  static Future getProducts(){
    return http.get("http://10.0.2.2:3000/products");
  }

  static Future getProductByCategoryId (int categoryId){
    return http.get("http://10.0.2.2:3000/products?categoryId=$categoryId");

  }


}