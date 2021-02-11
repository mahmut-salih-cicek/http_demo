
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http_demo/data/api/category_api.dart';
import 'package:http_demo/models/categori.dart';

class MainScreen extends StatefulWidget {
 

  @override
  
   State<StatefulWidget> createState(){
     return _MainScreenState();
   }
  
}

class _MainScreenState extends State<MainScreen> {
  ////// once api den kategorileri cekicez sonra ise widget haline gerip row halde scroll edilcek
  //var categories = <Category>[]; //////categori.dart class dakiyle ilişkili !!!
  ///var categoryWidgets = <Widget>[]; /////Widget class ilişkili !!!!

    List<Category> categories = List<Category>();
    List<Widget>  categoryWidgets = List<Widget>();



  @override
  void initState() { 
    getCategoriesFromApi(); ////kategorileri api den getir methodu yazıldı !!!
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    print("MAİN SCREEN BASLATILDI");
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List ",style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Burda olması lazım dizi bos geliyor $categoryWidgets"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets,
              ),
            ),
          ],
        ),
      ),
    );
  }


  void getCategoriesFromApi() {
   CatergoryApi.getCategory().then((response){ ////then bittigine dair sonra ne yapılcak methodu response ise json datasıdır !!!!
      setState(() {
           Iterable list = json.decode(response.body);
           this.categories = list.map((category) => Category.fromJson(category)).toList();   //// jsondaki dataları listeye cevirdi
            });
            getCategoryWidgets();////flat button sekline cevircek method

   }
   );
  }



/////// flat button sekline cevircek method
  List<Widget> getCategoryWidgets() {
   for(int i=0; i<categories.length; i++){
     categoryWidgets.add(getCategoryWidget(categories[i]));
   }
   return categoryWidgets;
  }


///////flat buttona name leri aticak
  Widget getCategoryWidget(Category category) {
    print("HATA BURDA1 : "+ category.categoryName);
    Text("burda olması lazım : ${category.categoryName}");
    return FlatButton(
      child: Text(category.categoryName,style: TextStyle(color: Colors.amber
      ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.black)
      ),
    );
  }

}
