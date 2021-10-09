import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigators/next_page.dart';

void main() {
  // 最初に表示するWidget
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "provider demo",

      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("provider"),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(model.text),
                  ElevatedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      model.changeText();
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}