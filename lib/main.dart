import 'package:flutter/material.dart';
import 'package:netflix/modal/downloadsmodel.dart';

import 'package:netflix/ui/fingerprint.dart';

import 'package:provider/provider.dart';
import 'modal/mylistmodal.dart';

void main() {
  runApp(
      MyApp()

      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // var data = EasyLocalizationProvider.of(context).data;
    return MultiProvider(
      providers: [
               ChangeNotifierProvider.value(
          value: Cart(),
        ), ChangeNotifierProvider.value(
          value: Carts(),
        ),
      ],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
