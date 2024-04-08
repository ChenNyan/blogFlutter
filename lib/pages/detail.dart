import 'package:app/pages/index.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('我是详情'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('我是详情'),
            ElevatedButton(
              child: const Text('返回首页'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}