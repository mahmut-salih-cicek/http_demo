
import 'package:http/http.dart' as http;

class CatergoryApi {
  static Future getCategory(){
    return http.get("http://10.0.2.2:3000/categories");
  }
}