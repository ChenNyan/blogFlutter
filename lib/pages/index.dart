import 'package:flutter/material.dart';
import './detail.dart';


class Index extends StatelessWidget {
  const Index({super.key});
  
  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('文章列表'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标标题标题标题标题标标题标题标题标题标题标题标题标题标题题标题标题标题标题题标题标题标题标题标题标题标题标题标题标题'),
                    Text('2024.4.7',)
                  ],
                ),
              ),
              Image.asset(
                'assets/loli.jpg',
                width: 200,
                height: 200,
              )
            ],
          )
        ],
      ),
    );
  }
}