import 'package:flutter/material.dart';

//statelesswidgettan extends alan MyColumn adında oluşturduğumuz sınıf
class Mycolumn extends StatelessWidget {
  // sınıfımızın kurucu fonksiyonu, widget çağırıldığında ilk kurucu fonksiyon çalışır
  // sınıf adı ile aynı olur
const Mycolumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    //uygulamamızın iskeletini oluşturan scaffold widgeti
    return Scaffold(
      //googleayarak veya gptden yardım alarak appBar eklemeyi deneyebilirsiniz appBar nedir araştırabilirsiniz
      //scaffoldun body kısmında diğer widgetlar yer alır
      body: Column(
        //column widgetı sütun anlamına gelir mainAxisAligment ve crossAxisAlignment ile widgetlerin pozisyonu belirlenir
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //container kutu şeklinde içerik eklemek için kullanılır
          //birçok parametresi var googleayarak özelliklerini öğrenebilirsizin
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
          ),

          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}