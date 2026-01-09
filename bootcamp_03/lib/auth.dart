import 'package:bootcamp_03/homepage.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold( 
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            // uygulama resmi
            Image.asset(
              "assets/images/bbclub-logo.png",
              width: 250,
              height: 250,
            ),

            SizedBox(height: 50), 
            //email
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-Posta",
                  hintText: "example@mail.com",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            
            //şifre
            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  hintText: "Şifrenizi girin",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            //button
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  debugPrint(emailController.text);
                  debugPrint(passwordController.text);
                  if(emailController.text == "bmbilecik@gmail.com" && passwordController.text=="123456")
                  {
                    debugPrint("Başarılı");
                  }
                  else
                  {
                    debugPrint("Hatalı");
                  }
                },
                child: const Text(
                  "Giriş Yap",
                  style: TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
