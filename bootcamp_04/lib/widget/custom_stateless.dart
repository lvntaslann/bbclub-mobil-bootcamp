// customStateless widget
// amacı: durum değişiklikleri olmadan statik içeriği gösteren stateless widget


import 'package:flutter/material.dart';

class CustomStateless extends StatelessWidget {
  /// customStateless widget'ı için constructor
  const CustomStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget Demo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // sabit metin gösterimi
            const Text(
              'This is a Stateless Widget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // statik container
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text('Static Content'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}