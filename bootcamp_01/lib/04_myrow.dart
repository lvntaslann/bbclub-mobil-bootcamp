import 'package:flutter/material.dart';

//Columna benzer bu sayfayı siz yorumlayın
class Myrow extends StatelessWidget {
const Myrow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Appbar")),
        backgroundColor: Colors.amber,
        leading: IconButton(onPressed: (){}, icon: BackButton()),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
              color: Colors.purple
            ),
          ),
          
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
          ),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}




